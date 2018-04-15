<?php

namespace app\common\model;

use app\common\library\Auth;
use think\Model;

class Vedio extends Model
{
    // 表名
    protected $name = 'vedio';
    protected $dateFormat='Y-m-d H:i:s';
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'created';
    protected $updateTime = false;

    // 追加属性
    protected $append = [
        'is_tj_text'
    ];
    protected $insert=[
        'uid'
    ];

    public function getIsTjList()
    {
        return ['4' => __('Is_tj 4')];
    }


    public function getIsTjTextAttr($value, $data)
    {
        $value = $value ? $value : $data['is_tj'];
        $list = $this->getIsTjList();
        return isset($list[$value]) ? $list[$value] : '';
    }

    public function setUidAttr(){
        $auth=Auth::instance();
        $uid=$auth->id?$auth->id:1;
        return $uid;
    }
    public function user(){
        return $this->belongsTo('user','uid','id')
            ->field('id,username');
    }
}
