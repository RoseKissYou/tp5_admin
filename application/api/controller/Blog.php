<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/27
 * Time: 14:47
 */

namespace app\api\controller;

use app\common\controller\HomeBase;
use app\common\model\Blog as BlogModel;
use think\Controller;
use think\View;
use think\Request;

class Blog extends HomeBase{

    private  $_Blog_model;
    public function _initialize(){
        $this->_Blog_model = new BlogModel();
    }


    /*
     * get blog home list
     * */
    public function index(){
        return $this->thinkJson($this->_Blog_model->showHomeList());
    }

    /*
     *
     * */
    public function detail($id=0){
        if(!empty($id)){
            // 根据id查询数据
            $re =  $this->_Blog_model->showOneBlog($id);
            return $this->thinkJson($re);
        }else{
            return $this->thinkJson($id);
        }
    }






}