<?php

namespace app\admin\controller\declared;

use app\common\controller\Backend;
use think\Db;
use app\admin\sql\declaredsSql;
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019\3\6 0006
 * Time: 15:33
 */
class Declareds extends Backend
{
    protected $sql= null;
    protected $searchFields = 'id';
    public function _initialize()
    {
        parent::_initialize();
        $this->sql = new declaredsSql();
    }

    /**
     * 查看
     */
    public function index(){
        //快捷查询数组数组联合查询需要带表名
        $searchArr = array('id');
        if ($this->request->isAjax()){

            list($where, $sort, $order, $offset, $limit) = $this->sql_buildparams($searchArr);

            $total = Db::getOne($this->sql->getDeclaredsCount($where));
            $list = Db::query($this->sql->getDeclaredsList($where,$sort,$order,$offset,$limit));
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
            $bool = Db::execute($this->sql->insertDeclareds($params));
            if($bool){
                $this->success();
            }else{
                $this->error();
            }
        }
        $rows = Db::query($this->sql->getDeclaredsRows());
        $this->assign('rows',$rows);
        $rowss = Db::query($this->sql->getDeclaredsRowss());
        $this->assign('rowss',$rowss);
        return $this->view->fetch();
    }
    /**
     * 编辑
     */
    public function edit($ids = NULL){
        if ($this->request->isPost()){
            $params = $this->request->post("row/a");
            $bool = Db::execute($this->sql->updateDeclareds($params));
            if($bool){
                $this->success();
            }else{
                $this->error();
            }
        }
        $row = Db::getOne($this->sql->getDeclaredsRow($ids));
        $this->view->assign("row", $row);
        $rows = Db::query($this->sql->getDeclaredsRows());
        $this->assign('rows',$rows);
        $rowss = Db::query($this->sql->getDeclaredsRowss());
        $this->assign('rowss',$rowss);
        return $this->view->fetch();
    }

    /**
     * 删除
     */
    public function del($ids = NULL){
        $bool = Db::execute($this->sql->delDeclareds($ids));
        if($bool){
            $this->success();
        }else{
            $this->error();
        }
    }

}