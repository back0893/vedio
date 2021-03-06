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

    protected static function init()
    {
        self::beforeUpdate(function ($row) {
            $changed = $row->getChangedData();
            //如果有修改密码
            if (isset($changed['password'])) {
                if ($changed['password']) {
                    $salt = \fast\Random::alnum();
                    $row->password = \app\common\library\Auth::instance()->getEncryptPassword($changed['password'], $salt);
                    $row->salt = $salt;
                } else {
                    unset($row->password);
                }
            }
        });
        self::beforeUpdate(function($row){
            //如果是成功就增加积分
            $changed = $row->getChangedData();
            if (isset($changed['success'])) {
                if ($changed['success']) {
                    User::score($row->score,$row->uid,'');
                }
            }
        });
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
