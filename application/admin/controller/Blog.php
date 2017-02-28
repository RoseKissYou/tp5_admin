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

    protected function _initialize(){
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


     //   $blog_list = new BlogModel();
       $blog_result = $this->_blog_model->showAll($cid,$keyword,$page);

        return $this->fetch('index', [
            'article_list' => $blog_result['article_list'],
            'category_list' => $blog_result['category_list'],
            'cid' => $blog_result['cid'],
            'keyword' => $blog_result['keyword'],
        ]);
    }

    /**
     * 添加文章
     * @return mixed
     */
    public function add()
    {
        if ($this->request->isPost()) {
            $data            = $this->request->param();
            // 验证数据  上传图片返回服务器的地址

          $blog_model = new BlogModel();
            // 选取data数据上传到数据库




//            $res = $blog_model->allowField(true)->
        }else{

            return $this->fetch('add');
        }


    }












}
