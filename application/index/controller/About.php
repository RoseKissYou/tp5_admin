<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/25
 * Time: 12:51
 */

namespace app\index\controller;

use think\Controller;
use think\View;


class About extends Controller{




    /*
     * 关于我们
     * */
    public function about(){
        $title_array = array(
            'title'     => '关于我们'       ,
            'id'     => 3
        );
        $this->assign('title',$title_array);
        return view('about');
    }

    /*
     * 联系我们
     * */
    public function contact(){
        $title_array = array(
            'title'     => '联系我们'       ,
            'id'     => 4
        );
        $this->assign('title',$title_array);
        return view('contact');
    }
}