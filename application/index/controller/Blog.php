<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/2/27
 * Time: 9:27
 */

namespace app\index\controller;

use app\common\controller\HomeBase;
use app\common\model\Blog as BlogModel;
use think\View;
use think\Controller;
use think\Request;

class Blog extends HomeBase{

    private $_bolg_model;
    /**
     * @var \think\Request Request实例
     */
//    protected $request;

//    /**
//     * 构造方法
//     * @param Request $request Request对象
//     * @access public
//     */
//    public function __construct(Request $request=null){
//        if(is_null($request)){
//            $request = Request::instance();
//        }
//        $this->request = $request;
//        // 控制器初始化
//        $this->_initialize();
//    }

    /*
     * 控制器初始化
     * */
    public function _initialize()
    {
        $this->_bolg_model = new BlogModel();
    }

    /*
     *show all blog list  content   id /title / thumb / introduce
     * @author rose @date 2017 02 25
     * */
    public function index(){
        $blogs = $this->_bolg_model->showHomeList();
      //  var_dump($blogs);
        $title_array = array(
            'title'     => '博客'     ,
            'id'     => 2
        );
        $this->assign('title',$title_array);
        $this->assign('results',$blogs);
        return view('index');
    }

    /*
     * show a blog detail
     * @author rose @date 2017 02 26
    */
    public function detail($id=0){
        if(!empty($id)){
            // 根据id查询数据
            $re =  $this->_bolg_model->showOneBlog($id);
            $title_array = array(
                'title'     => '博客'     ,
                'id'     => 2
            );
            $this->assign('title',$title_array);

            $this->assign('results',$re);
            return view('detail');
          //  return $this->thinkJson($re);
        }else{
            return $this->thinkJson($id);
        }
    }

    /*
    * new a blog
    * @author rose @date 2017 02 26
   */
    public function add(){


        if($this->request->isPost()){
                echo 'post';

        }else{
            $title_array = array(
                'title'     => '添加博客'     ,
                'id'     => 2
            );
            $this->assign('title',$title_array);
            $this->assign('results',null);
            return view('add');
        }

    }

    public function save(){

    }





















}