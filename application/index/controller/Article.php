<?php
namespace app\index\controller;

use app\common\controller\HomeBase;
use app\common\model\Article as ArticleModel;
use app\common\model\Category as CategoryModel;
use think\Controller;
use think\View;
use think\Db;


/**
 * 文章详情信息获取
 * Class Article
 * @package app\index\controller
 */
class Article extends HomeBase
{
    /*
     *show all articles
     * @author rose @date 2017 02 25
     * */
    public function index(){
        $articles = Db::name('article')->select();
       // var_dump($articles);
        $title_array = array(
            'title'     => '博客'       ,
            'id'     => 2
        );
        $this->assign('title',$title_array);
        return view('index');
    }
    /*
     *add a  article
     * @author rose @date 2017 02 25
     * */
    public function add(){

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