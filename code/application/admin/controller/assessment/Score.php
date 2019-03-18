<?php

namespace app\admin\controller\assessment;

use app\common\controller\Backend;
use think\Db;
use app\admin\sql\scoreSql;

/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019\3\12 0012
 * Time: 9:23
 */
class Score extends Backend
{
    protected $sql= null;
    protected $searchFields = 'id';
    public function _initialize()
    {
        parent::_initialize();
        $this->sql = new scoreSql();
    }

    /**
     * 查看
     */
    public function index(){
        //快捷查询数组数组联合查询需要带表名
        $searchArr = array('id');
        if ($this->request->isAjax()){
            list($where, $sort, $order, $offset, $limit) = $this->sql_buildparams($searchArr);
            $total = Db::getOne($this->sql->getScoreCount($where));
            $list = Db::query($this->sql->getScoreList($where,$sort,$order,$offset,$limit));
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
            $bool = $this->sql->insertScore($params);
            if($bool){
                $this->success();
            }else{
                $this->error();
            }
        }
        return $this->view->fetch();
    }
    /**
     * 编辑
     */
    public function edit($ids = NULL){
        if ($this->request->isPost()){
            $params = $this->request->post("row/a");
            $bool = Db::execute($this->sql->updateScore($params));
            if($bool){
                $this->success();
            }else{
                $this->error();
            }
        }
        $row = Db::getOne($this->sql->getScoreRow($ids));
        $this->view->assign("row", $row);
        return $this->view->fetch();
    }

    /**
     * 删除
     */
    public function del($ids = NULL){
        $bool = Db::execute($this->sql->delScore($ids));
        if($bool){
            $this->success();
        }else{
            $this->error();
        }
    }

}