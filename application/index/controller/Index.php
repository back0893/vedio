<?php

namespace app\index\controller;

use app\common\controller\Frontend;
use app\common\library\Token;
use app\common\model\Vedio;

class Index extends Frontend
{

    protected $noNeedLogin = '*';
    protected $noNeedRight = '*';
    protected $layout = '';

    public function _initialize()
    {
        parent::_initialize();
    }

    public function index()
    {
        $bc=Vedio::order('created desc')
            ->limit(0,6)
            ->select();
        $vedio=Vedio::where(['is_tj'=>1])
            ->limit(6,50)
            ->select();
        $this->assign('bc',$bc);
        $this->assign('vedio',$vedio);
        return $this->view->fetch();
    }

   public function search(){
        $tag=input('tag_name');
        $vedio=Vedio::where(['tags'=>['like',"%{$tag}%"]])
            ->paginate(30,false,[
                'query'=>['tag_name'=>$tag]
            ]);
        $this->assign('vedio',$vedio);
        return $this->fetch();
   }

}
