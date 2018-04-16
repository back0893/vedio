<?php

namespace app\index\controller;

use app\admin\library\Auth;
use app\common\controller\Frontend;
use app\common\model\Vedio;
use think\Config;
use think\Cookie;
use think\Hook;
use think\model\Collection;
use think\Session;
use think\Validate;

/**
 * 会员中心
 */
class User extends Frontend
{

    protected $layout = 'default';
    protected $noNeedLogin = ['login', 'register', 'third'];
    protected $noNeedRight = ['*'];

    public function _initialize()
    {
        parent::_initialize();
        $auth = $this->auth;

        if (!Config::get('fastadmin.usercenter')) {
            $this->error(__('User center already closed'));
        }

        $ucenter = get_addon_info('ucenter');
        if ($ucenter && $ucenter['state']) {
            include ADDON_PATH . 'ucenter' . DS . 'uc.php';
        }

        //监听注册登录注销的事件
        Hook::add('user_login_successed', function ($user) use ($auth) {
            $expire = input('post.keeplogin') ? 30 * 86400 : 0;
            Cookie::set('uid', $user->id, $expire);
            Cookie::set('token', $auth->getToken(), $expire);
        });
        Hook::add('user_register_successed', function ($user) use ($auth) {
            Cookie::set('uid', $user->id);
            Cookie::set('token', $auth->getToken());
        });
        Hook::add('user_delete_successed', function ($user) use ($auth) {
            Cookie::delete('uid');
            Cookie::delete('token');
        });
        Hook::add('user_logout_successed', function ($user) use ($auth) {
            Cookie::delete('uid');
            Cookie::delete('token');
        });
    }

    /**
     * 会员中心
     */
    public function index()
    {
        $this->view->assign('title', __('User center'));
        $upload=Vedio::where(['uid'=>$this->auth->id])
            ->limit(4)
            ->select();
        $this->assign('upload',$upload);
        return $this->view->fetch();
    }

    /**
     * 注册会员
     */
    public function register()
    {
        $url = $this->request->request('url');
        if ($this->auth->id)
            $this->success(__('You\'ve logged in, do not login again'), $url);
        if ($this->request->isPost()) {
            $username = $this->request->post('username');
            $password = $this->request->post('password');
            $repassword = $this->request->post('repassword');
            $email = $this->request->post('email');
            $mobile = $this->request->post('mobile', '');
            $captcha = $this->request->post('captcha');
            $token = $this->request->post('__token__');
            $rule = [
                'username'  => 'require|length:3,30',
                'password'  => 'require|length:6,30',
                'email'     => 'require|email',
//                'mobile'    => 'regex:/^1\d{10}$/',
//                'captcha'   => 'require|captcha',
                '__token__' => 'token',
                'repassword'=>'require|confirm:password'
            ];

            $msg = [
                'username.require' => 'Username can not be empty',
                'username.length'  => 'Username must be 3 to 30 characters',
                'password.require' => 'Password can not be empty',
                'password.length'  => 'Password must be 6 to 30 characters',
//                'captcha.require'  => 'Captcha can not be empty',
//                'captcha.captcha'  => 'Captcha is incorrect',
                'email'            => 'Email is incorrect',
                'mobile'           => 'Mobile is incorrect',
                'repassword'=>'2次密码不一致'
            ];
            $data = [
                'username'  => $username,
                'password'  => $password,
                'email'     => $email,
//                'mobile'    => $mobile,
//                'captcha'   => $captcha,
                '__token__' => $token,
                'repassword'=>$repassword
            ];
            $validate = new Validate($rule, $msg);
            $result = $validate->check($data);
            if (!$result) {
                $this->error(__($validate->getError()));
            }
            if ($this->auth->register($username, $password, $email)) {
                $synchtml = '';
                ////////////////同步到Ucenter////////////////
                $this->success(__('Sign up successful') . $synchtml, $url ? $url : url('user/index'));
            } else {
                $this->error($this->auth->getError());
            }
        }
        //判断来源
        $referer = $this->request->server('HTTP_REFERER');
        if (!$url && (strtolower(parse_url($referer, PHP_URL_HOST)) == strtolower($this->request->host()))
            && !preg_match("/(user\/login|user\/register)/i", $referer)) {
            $url = $referer;
        }
        $this->view->assign('url', $url);
        $this->view->assign('title', __('Register'));
        $this->view->engine(['layout'=>null]);
        return $this->view->fetch('register1');
    }

    /**
     * 会员登录
     */
    public function login()
    {
        $url = $this->request->request('url');
        if ($this->auth->id)
            $this->success(__('You\'ve logged in, do not login again'), $url);
        if ($this->request->isPost()) {
            $account = $this->request->post('account');
            $password = $this->request->post('password');
            $keeplogin = (int)$this->request->post('keeplogin');
            $token = $this->request->post('__token__');
            $rule = [
                'account'   => 'require|length:3,50',
                'password'  => 'require|length:6,30',
                '__token__' => 'token',
            ];

            $msg = [
                'account.require'  => 'Account can not be empty',
                'account.length'   => 'Account must be 3 to 50 characters',
                'password.require' => 'Password can not be empty',
                'password.length'  => 'Password must be 6 to 30 characters',
            ];
            $data = [
                'account'   => $account,
                'password'  => $password,
                '__token__' => $token,
            ];
            $validate = new Validate($rule, $msg);
            $result = $validate->check($data);
            if (!$result) {
                $this->error(__($validate->getError()));
                return FALSE;
            }
            if ($this->auth->login($account, $password)) {
                $synchtml = '';
                $this->success(__('Logged in successful') . $synchtml, $url ? $url : url('user/index'));
            } else {
                $this->error($this->auth->getError());
            }
        }
        //判断来源
        $referer = $this->request->server('HTTP_REFERER');
        if (!$url && (strtolower(parse_url($referer, PHP_URL_HOST)) == strtolower($this->request->host()))
            && !preg_match("/(user\/login|user\/register)/i", $referer)) {
            $url = $referer;
        }
        $this->view->assign('url', $url);
        $this->view->assign('title', __('Login'));
        $this->view->engine(['layout'=>null]);
        return $this->view->fetch('login1');
    }

    /**
     * 注销登录
     */
    function logout()
    {
        //注销本站
        $this->auth->logout();
        $synchtml = '';
        ////////////////同步到Ucenter////////////////
        $this->success(__('Logout successful') . $synchtml, url('/'));
    }

    /**
     * 个人信息
     */
    public function profile()
    {
        $this->view->assign('title', __('Profile'));
        return $this->view->fetch();
    }

    /**
     * 修改密码
     */
    public function changepwd()
    {
        if ($this->request->isPost()) {
            $oldpassword = $this->request->post("oldpassword");
            $newpassword = $this->request->post("newpassword");
            $renewpassword = $this->request->post("renewpassword");
            $token = $this->request->post('__token__');
            $rule = [
                'oldpassword'   => 'require|length:6,30',
                'newpassword'   => 'require|length:6,30',
                'renewpassword' => 'require|length:6,30|confirm:newpassword',
                '__token__'     => 'token',
            ];

            $msg = [
            ];
            $data = [
                'oldpassword'   => $oldpassword,
                'newpassword'   => $newpassword,
                'renewpassword' => $renewpassword,
                '__token__'     => $token,
            ];
            $field = [
                'oldpassword'   => __('Old password'),
                'newpassword'   => __('New password'),
                'renewpassword' => __('Renew password')
            ];
            $validate = new Validate($rule, $msg, $field);
            $result = $validate->check($data);
            if (!$result) {
                $this->error(__($validate->getError()));
                return FALSE;
            }

            $ret = $this->auth->changepwd($newpassword, $oldpassword);
            if ($ret) {
                $synchtml = '';
                ////////////////同步到Ucenter////////////////
                if (defined('UC_STATUS') && UC_STATUS) {
                    $uc = new \addons\ucenter\library\client\Client();
                    $synchtml = $uc->uc_user_synlogout();
                }
                $this->success(__('Reset password successful') . $synchtml, url('user/login'));
            } else {
                $this->error($this->auth->getError());
            }
        }
        $this->view->assign('title', __('Change password'));
        return $this->view->fetch();
    }
    public function vip(){
        return $this->fetch();
    }
    public function collection(){
        return $this->fetch();
    }
    public function vedio(){
        $sim=false;
        $agent=$this->request->header('User-Agent');
        if(strpos('Android',$agent)!==false || strpos('Apple',$agent) !==false){
            $sim=true;
        }
        $vedio=Vedio::where(['uid'=>$this->auth->id])
            ->paginate(12,$sim);
        $this->assign('vedio',$vedio);
        return $this->fetch();
    }
    public function upload(){
        if($this->request->isPost()){
            $data=input();
            $model=new Vedio();
            $model->allowField(true)
                ->save($data);
            return $this->success('上传成功','user/index');
        }
        $this->view->engine->layout('layout/layout1' );
        return $this->fetch();
    }
    public function security(){
        return $this->fetch();
    }
}
