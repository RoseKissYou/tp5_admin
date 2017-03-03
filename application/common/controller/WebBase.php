<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/28
 * Time: 16:05
 */

namespace app\common\controller;

use org\Auth;
use think\Loader;
use think\Cache;
use think\Controller;
use think\Db;
use think\Session;

class WebBase extends Controller{


    protected  function _initialize(){
        parent::_initialize();

       // $this->checkAuth();

    }

    /**
     * 权限检查
     * @return bool
     */
//    protected function checkAuth()
//    {
//
//        if (!Session::has('admin_id')) {
//            $this->redirect('admin/login/index');
//        }
//
//        $module     = $this->request->module();
//        $controller = $this->request->controller();
//        $action     = $this->request->action();
//
//        // 排除权限
//        $not_check = ['admin/Index/index', 'admin/AuthGroup/getjson', 'admin/System/clear'];
//
//        if (!in_array($module . '/' . $controller . '/' . $action, $not_check)) {
//            $auth     = new Auth();
//            $admin_id = Session::get('admin_id');
//            if (!$auth->check($module . '/' . $controller . '/' . $action, $admin_id) && $admin_id != 1) {
//                $this->error('没有权限');
//            }
//        }
//    }




}