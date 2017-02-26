<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/26
 * Time: 11:52
 */

namespace app\api\controller;
use app\common\controller\HomeBase;
use think\View;
use think\Request;
use app\common\model\Article as ArticleModel;
use think\Controller;

class Article extends HomeBase{
    private $_article_model ;

    public function _initialize()
    {
        $this->_article_model  = new ArticleModel();
    }

    /*
     * 获取推荐数据 不包含内容
     *
     * */
    public function index(){
        return $this->thinkJson($this->_article_model->showHomeList());
    }

    /*
     * 获取推荐数据 指定返回 id,title,introduction,publish_time
     *@author xiongan  @date 2017 02 26
     * */
    public function homeList(){
        $result = $this->_article_model->showHomeList();
        return $this->thinkJson($result);
    }

    /*
     * 获取详情数据 根据id指定返回 对应的所有数据
     * @author xiongan  @date 2017 02 26
     * */
    public function detail($id=0){
        if(!empty($id)){
            // 根据id查询数据
            $re =  $this->_article_model->showOneArticle($id);
            return $this->thinkJson($re);
        }else{
            return $this->thinkJson($id);
        }
    }








    /*
    * 处理返回json数据
    *
    * */
    protected function returnJson($array){
        $article =\app\common\model\Article::get(1);
//        $article = ArticleModel::all();
        var_dump($article);
        echo '<br/>';
//        $article->showAllArticles();

        return  $article->toJson();

    }







}