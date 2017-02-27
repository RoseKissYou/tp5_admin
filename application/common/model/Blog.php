<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/27
 * Time: 9:32
 */

namespace app\common\model;

use think\Model;
use think\Db;

class Blog extends Model{


    /*
     * 展示首页列表数据 id cid title introduction reading  thumb publish_time
     * */
    public function showHomeList(){
        //   return Db::name('article')->select('title');
        return Db::query('SELECT id,title,introduction,publish_time,thumb FROM think_blog ');
    }

    /*
    * 获取详情数据 根据id指定返回 对应的所有数据
    * @author xiongan  @date 2017 02 26
    * */
    public function showOneArticle($id){
//        return Db::query('SELECT id,title,introduction,publish_time FROM think_article ');
        return Db::name('blog')->where(['id'=>$id])->select();
    }


}
