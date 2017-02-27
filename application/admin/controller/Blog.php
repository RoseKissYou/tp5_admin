<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/27
 * Time: 15:22
 */
namespace app\admin\controller;

use app\common\model\Blog as BlogModel;
use app\common\model\Category as CategoryModel;
use app\common\controller\AdminBase;

/**
 * 博客管理
 * Class Blog
 * @package app\admin\controller
 */

class Blog  extends AdminBase{
    protected  $_blog_model;
    protected $category_model;

    protected function __initialize(){
        parent::_initialize();
        $this->_blog_model = new BlogModel();
        $this->category_model = new CategoryModel();

        $category_level_list = $this->category_model->getLevelList();
        $this->assign('category_level_list', $category_level_list);
    }

    /*
     * show all blogs
     * */
    public function index($cid = 0, $keyword = '', $page = 1){


        $blog_list = '';

        $category_list  = '';


        return $this->fetch('index', [
            'article_list' => $blog_list,
            'category_list' => $category_list,
            'cid' => $cid, 'keyword' => $keyword
        ]);



    }






}
