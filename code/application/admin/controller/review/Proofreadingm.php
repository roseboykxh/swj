<?php

namespace app\admin\controller\review;

use app\common\controller\Backend;
use think\Db;
use app\admin\sql\proofreadingmSql;
use think\Session;
class Proofreadingm extends Backend
{
    protected $sql= null;
    public function _initialize()
    {
        parent::_initialize();
        $this->sql = new proofreadingmSql();
    }

    /**
     * 查看
     */
    public function index(){
        //快捷查询数组数组联合查询需要带表名
        $searchArr = array('za.id');
        if ($this->request->isAjax()){
            list($where, $sort, $order, $offset, $limit) = $this->sql_buildparams($searchArr);
            $total = Db::getOne($this->sql->getProofreadingmCount($where));
            $list = Db::query($this->sql->getProofreadingmList($where,$sort,$order,$offset,$limit));
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
            $bool = $this->sql->updateProofreadingm($params);
            for($i=0;$i<count($bool);$i++){
                Db::execute($bool[$i]);
            }
            if($bool){
                $this->success();

            }else{
                $this->error();
            }
        }
        $row = Db::query($this->sql->getProofreadingmRow());
        $this->assign('row',$row);
        $this->assign('admin', $admin);
        return $this->view->fetch();
    }
    public function getJson(){
        $row = Db::query($this->sql->getJson());
        return $row;
    }
    public function getJsons(){
        $arr = [1=>'一月',2=>'二月',3=>'三月',4=>'四月',5=>'五月',6=>'六月',7=>'七月',8=>'八月',9=>'九月',10=>'十月',11=>'十一月',12=>'十二月'];
        return $arr;
    }
}