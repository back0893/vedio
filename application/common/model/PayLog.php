<?php

namespace app\common\model;

use think\Model;

class PayLog extends Model
{
    // 表名
    protected $name = 'pay_log';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $dateFormat='Y-m-d H:i:s';
    // 追加属性
    protected $append = [
        'success_text',
    ];
    

    
    public function getSuccessList()
    {
        return ['1' =>'充值成功','0'=>'充值失败'];
    }     


    public function getSuccessTextAttr($value, $data)
    {        
        $value = $value ? $value : $data['success'];
        $list = $this->getSuccessList();
        return isset($list[$value]) ? $list[$value] : '';
    }
    public function user(){
        return $this->belongsTo('user','uid','id')
            ->field('username,id');
    }
    public function setCreatedAttr($value){
        return strtotime($value);
    }
    public function getCreatedAttr($value){
        return date($this->dateFormat,$value);
    }
}
