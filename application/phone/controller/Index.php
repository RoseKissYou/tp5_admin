<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/28
 * Time: 15:01
 */

namespace app\phone\controller;

use app\common\controller\WebBase;
use think\Session;
use app\common\model\Article as ArticleModel;

class Index extends WebBase{
    private $_article_model;

    protected function _initialize()
    {
        parent::_initialize();
        $this->_article_model = new  ArticleModel() ;
    }

    /*
     * 前台首页
     * 展示欢迎界面 显示所有文章列表
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
    public function detail($id=0){
        // 从数据库获取数据
        if(empty($id)){
            $this->error('文章已经被删除或者不存在','Index/index');
        }else{
            $re =  $this->_article_model->showOneArticle($id);
            $this->assign('title',array(
                'title'=>'文案'
            ));
            $this->assign('results',$re);
//            var_dump($resutl);
            return $this->fetch();
        }

    }





















}