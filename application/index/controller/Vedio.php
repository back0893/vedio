<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/15
 * Time: 23:22
 */

namespace app\index\controller;


use app\common\controller\Frontend;

class Vedio extends Frontend
{
    protected $noNeedLogin = '*';
    protected $noNeedRight = '*';
    protected $layout = '';
    public function detail(){
        $id=input('id',0,'intval');
        $vedio=\app\common\model\Vedio::get($id);
        if(empty($vedio)){
            return $this->error('视屏走丢了');
        }
        $random=\app\common\model\Vedio::order('created desc')
            ->limit(30)
            ->select();
        $random=collection($random)->toArray();
        shuffle($random);
        $this->assign('random',$random);
        $this->assign('vedio',$vedio);
        return $this->fetch();
    }
}