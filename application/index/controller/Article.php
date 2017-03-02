<?php
namespace app\index\controller;

use app\common\controller\HomeBase;
use app\common\model\Article as ArticleModel;
use app\common\model\Category as CategoryModel;
use think\Controller;
use think\View;



/**
 * 文章详情信息获取
 * Class Article
 * @package app\index\controller
 */
class Article extends HomeBase
{
    private $_article_model;
    /*
     * 控制器初始化
     * */
    public function _initialize()
    {
        $this->_article_model = new ArticleModel();
    }

    /*
     *show all articles
     * @author rose @date 2017 02 25
     * */
    public function index(){

        $articles = $this->_article_model->showHomeList();
//        var_dump($articles);
        $title_array = array(
            'title'     => '博客'       ,
            'id'     => 5
        );
        $this->assign('title',$title_array);
        $this->assign('results',$articles);
        return view('index');
    }

    /*
     *add a  article
     * @author rose @date 2017 02 25
     * */
    public function add(){

    }

    /*
    * show article detail
    * @author rose @date 2017 02 25
    * */

    public function detail($id=0){
        if(!empty($id)){
            // 根据id查询数据
            $re =  $this->_article_model->showOneArticle($id);
            $title_array = array(
                'title'     => '文章'     ,
                'id'     => 5
            );
            $this->assign('title',$title_array);

            $this->assign('results',$re);
            return view('detail');
            //  return $this->thinkJson($re);
        }else{
//            return $this->thinkJson($id);
            return 'error';
        }
    }






    public function index_bak()
    {
        $id  = $this->request->param('id/d');
        $cid = $this->request->param('cid/d');

        if (empty($cid) || empty($id)) {
            return false;
        }

        $category_model = new CategoryModel();
        $article_model  = new ArticleModel();

        // 当前分类
        $current = $category_model->get($cid);
        if (empty($current)) {
            return false;
        }

        $path = explode(',', $current['path']);
        $pid  = !empty($path[1]) ? $path[1] : $cid;
        // 当前分类顶级父类
        $parent = $category_model->get($pid);
        // 当前分类所有子分类
        $children = get_category_children($pid);
        // 当前文章
        $article = $article_model->get($id);

        return $this->fetch(":{$current['detail_template']}", [
            'parent'   => $parent,
            'current'  => $current,
            'children' => $children,
            'article'  => $article
        ]);
    }






}