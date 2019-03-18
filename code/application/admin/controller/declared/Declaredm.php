<?php

namespace app\admin\controller\declared;

use app\common\controller\Backend;
use think\Db;
use app\admin\sql\declaredmSql;
use think\Session;

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019\3\6 0006
 * Time: 15:33
 */
class Declaredm extends Backend
{
    protected $sql= null;
    protected $searchFields = 'rf_title';
    public function _initialize()
    {
        parent::_initialize();
        $this->sql = new declaredmSql();
    }

    /**
     * 查看
     */
    public function index(){
        //快捷查询数组数组联合查询需要带表名
        $searchArr = array('rf_title','item_val');
        if ($this->request->isAjax()){

            list($where, $sort, $order, $offset, $limit) = $this->sql_buildparams($searchArr);

            $total = Db::getOne($this->sql->getDeclaredmCount($where));
            $list = Db::query($this->sql->getDeclaredmList($where,$sort,$order,$offset,$limit));
            $result = array("total" => $total['total'], "rows" => $list);
            return json($result);
        }
        return $this->view->fetch();
    }

    /**
     * 添加
     */
    public function add(){
        $admin = Session::get('admin');
        if ($this->request->isPost()){
            $params = $this->request->post("row/a");
            $params['admin_id'] = $admin['id'];
            $bool = $this->sql->insertDeclaredm($params);
            for($i=0;$i<count($bool);$i++){
                Db::execute($bool[$i]);
            }
            if($bool){
                $this->success();
            }else{
                $this->error();
            }
        }
        $rows = Db::query($this->sql->getDeclaredmRows());
        $this->assign('rows',$rows);
        $this->assign('admin', $admin);
        return $this->view->fetch();
    }
    /**
     * 编辑
     */
    public function edit($ids = NULL){
        $admin = Session::get('admin');
        if ($this->request->isPost()){
            $params = $this->request->post("row/a");
            $bool = Db::execute($this->sql->updateDeclaredm($params));
            if($bool){
                $this->success();
            }else{
                $this->error();
            }
        }
        $row = Db::getOne($this->sql->getDeclaredmRow($ids));
        $this->view->assign("row", $row);
        $this->assign('admin', $admin);
        return $this->view->fetch();
    }

    /**
     * 删除
     */
    public function del($ids = NULL){
        $bool = Db::execute($this->sql->delDeclaredm($ids));
        if($bool){
            $this->success();
        }else{
            $this->error();
        }
    }

}