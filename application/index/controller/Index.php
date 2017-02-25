<?php
namespace app\index\controller;

use app\common\controller\HomeBase;  // model
use think\Db;                       // db

class Index extends HomeBase
{
    public function index()
    {
        $title_array = array(
            'title'     => '首页'       ,
            'id'     => 1
        );
        $this->assign('title',$title_array);
        return $this->fetch();
    }
}
