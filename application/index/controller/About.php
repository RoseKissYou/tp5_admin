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
    public function index(){
        return view('index');
    }
}