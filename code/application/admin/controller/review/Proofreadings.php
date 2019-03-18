<?php

namespace app\admin\controller\review;

use app\common\controller\Backend;
use think\Db;
use app\admin\sql\proofreadingsSql;
use think\Session;
class Proofreadings extends Backend
{
    protected $sql= null;
    public function _initialize()
    {
        parent::_initialize();
        $this->sql = new proofreadingsSql();
    }

    /**
     * 查看
     */
    public function index(){
        //快捷查询数组数组联合查询需要带表名
        $searchArr = array('id');
        if ($this->request->isAjax()){
            list($where, $sort, $order, $offset, $limit) = $this->sql_buildparams($searchArr);
            $total = Db::getOne($this->sql->getProofreadingsCount($where));
            $list = Db::query($this->sql->getProofreadingsList($where,$sort,$order,$offset,$limit));
            $result = array("total" => $total['total'], "rows" => $list);
            return json($result);
        }
        return $this->view->fetch();
    }

    /**
     * 编辑
     */
    public function edit($ids = NULL){
        $admin = Session::get('admin');
        if ($this->request->isPost()){
            $params = $this->request->post("row/a");
            $params['admin_id'] = $admin['id'];
            $bool = $this->sql->updateProofreadings($params);
            for($i=0;$i<count($bool);$i++){
                Db::execute($bool[$i]);
            }
            if($bool){
                $this->success();

            }else{
                $this->error();
            }
        }
        $row = Db::query($this->sql->getProofreadingsRow());
        $this->assign('row',$row);
        $this->assign('admin', $admin);
        return $this->view->fetch();
    }
    public function getJson(){
        $arr = [0=>'1222',1=>'333'];
        return $arr;
    }
    public function getJsons(){
        $arr = [1=>'一月',2=>'二月',3=>'三月',4=>'四月',5=>'五月',6=>'六月',7=>'七月',8=>'八月',9=>'九月',10=>'十月',11=>'十一月',12=>'十二月'];
        return $arr;
    }
}