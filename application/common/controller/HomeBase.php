<?php
namespace app\common\controller;

use think\Cache;
use think\Controller;
use think\Db;

class HomeBase extends Controller
{
    private $_SUCCESS_CODE = 200;
    private $_ERROR_CODE   = 0;
    private $_FAIL_CODE = 110;

    protected function _initialize()
    {
        parent::_initialize();
        $this->getSystem();
        $this->getNav();
        $this->getSlide();
    }

    /**
     * 获取站点信息
     */
    protected function getSystem()
    {
        if (Cache::has('site_config')) {
            $site_config = Cache::get('site_config');
        } else {
            $site_config = Db::name('system')->field('value')->where('name', 'site_config')->find();
            $site_config = unserialize($site_config['value']);
            Cache::set('site_config', $site_config);
        }

        $this->assign($site_config);
    }

    /**
     * 获取前端导航列表
     */
    protected function getNav()
    {
        if (Cache::has('nav')) {
            $nav = Cache::get('nav');
        } else {
            $nav = Db::name('nav')->where(['status' => 1])->order(['sort' => 'ASC'])->select();
            $nav = !empty($nav) ? array2tree($nav) : [];
            if (!empty($nav)) {
                Cache::set('nav', $nav);
            }
        }

        $this->assign('nav', $nav);
    }

    /**
     * 获取前端轮播图
     */
    protected function getSlide()
    {
        if (Cache::has('slide')) {
            $slide = Cache::get('slide');
        } else {
            $slide = Db::name('slide')->where(['status' => 1, 'cid' => 1])->order(['sort' => 'DESC'])->select();
            if (!empty($slide)) {
                Cache::set('slide', $slide);
            }
        }

        $this->assign('slide', $slide);
    }





    /*
     * 封装json返回格式
     * @author xiongan  @date 2017 02 26
     * */
    public function thinkJson($array){

        $code_num  = 0;
        $msg       = '';
        if(is_array($array)){
            if(count($array) == 0){
                //返回的数据为空, 就输出错误码
                $code_num = $this->_ERROR_CODE;
                $msg = '请求数据为空';
            }else{
                $code_num = $this->_SUCCESS_CODE;
                $msg = '请求成功';
            }
        }else{
            $code_num = $this->_FAIL_CODE;
            $msg = '请求数据错误';
        }

        $data_array = array(
            'error'     => $code_num,
            'msg'       => $msg,
            'data'      => $array
        );
        return json_encode($data_array,JSON_UNESCAPED_UNICODE);
    }







}