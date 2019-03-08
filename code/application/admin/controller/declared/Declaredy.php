<?php

namespace app\admin\controller\declared;

use app\common\controller\Backend;
use think\Db;
use app\admin\sql\declaredySql;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019\3\6 0006
 * Time: 15:33
 */
class Declaredy extends Backend
{
    protected $sql= null;
    protected $searchFields = 'id';
    public function _initialize()
    {
        parent::_initialize();
        $this->sql = new declaredySql();
    }

    /**
     * 查看
     */
    public function index(){
        //快捷查询数组数组联合查询需要带表名
        $searchArr = array('id');
        if ($this->request->isAjax()){

            list($where, $sort, $order, $offset, $limit) = $this->sql_buildparams($searchArr);

            $total = Db::getOne($this->sql->getDeclaredyCount($where));
            $list = Db::query($this->sql->getDeclaredyList($where,$sort,$order,$offset,$limit));
            $result = array("total" => $total['total'], "rows" => $list);
            return json($result);
        }
        return $this->view->fetch();
    }

    /**
     * 添加
     */
    public function add(){
        if ($this->request->isPost()){
            $params = $this->request->post("row/a");
            $bool = Db::execute($this->sql->insertDeclaredy($params));
            if($bool){
                $this->success();
            }else{
                $this->error();
            }
        }
        $rows = Db::query($this->sql->getDeclaredyRows());
        $this->assign('rows',$rows);
        $rowss = Db::query($this->sql->getDeclaredyRowss());
        $this->assign('rowss',$rowss);
        return $this->view->fetch();
    }
    /**
     * 编辑
     */
    public function edit($ids = NULL){
        if ($this->request->isPost()){
            $params = $this->request->post("row/a");
            $bool = Db::execute($this->sql->updateDeclaredy($params));
            if($bool){
                $this->success();
            }else{
                $this->error();
            }
        }
        $row = Db::getOne($this->sql->getDeclaredyRow($ids));
        $this->view->assign("row", $row);
        $rows = Db::query($this->sql->getDeclaredyRows());
        $this->assign('rows',$rows);
        $rowss = Db::query($this->sql->getDeclaredyRowss());
        $this->assign('rowss',$rowss);
        return $this->view->fetch();
    }

    /**
     * 删除
     */
    public function del($ids = NULL){
        $bool = Db::execute($this->sql->delDeclaredy($ids));
        if($bool){
            $this->success();
        }else{
            $this->error();
        }
    }

}