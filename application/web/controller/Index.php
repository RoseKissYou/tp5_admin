<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/28
 * Time: 15:01
 */

namespace app\web\controller;

use app\common\controller\WebBase;
use think\Session;

class Index extends WebBase{

    protected function _initialize()
    {
        parent::_initialize();
    }

    /*
     * 前台首页
     * 展示欢迎界面
     * */
    public function index(){

        $this->assign('title',array(
            'title'=>'首页'
        ));
        return $this->fetch();

    }

    /*
     *
     * */
    public function show_id($id){
        // 从数据库获取数据


    }





















}