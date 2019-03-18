<?php

namespace app\admin\controller\statistics;

use app\common\controller\Backend;
use think\Db;
use app\admin\sql\monthSql;
use think\Session;

class Month extends Backend
{
    protected $sql = null;
    public function _initialize()
    {
        parent::_initialize();
        $this->sql = new monthSql();
    }

    /**
     * 查看分组
     */
    public function index()
    {
        //快捷查询数组数组联合查询需要带表名
        $searchArr = array('za.id');
        if ($this->request->isAjax()){
            list($where, $sort, $order, $offset, $limit) = $this->sql_buildparams($searchArr);
            $total = Db::getOne($this->sql->getMonthCount($where));
            $list = Db::query($this->sql->getMonthList($where,$sort,$order,$offset,$limit));
            for($i=0;$i<count($list);$i++){
                $list[$i]['declare_time'] = date("Y-m-d",$list[$i]['declare_time']);
            }
            $result = array("total" => $total['total'], "rows" => $list);
            return json($result);
        }
        return $this->view->fetch();
    }

    /**
     *
     */
    public function edit($ids = NULL)
    {
        if ($this->request->isPost()) {
            $params = $this->request->post("row/a");
            $bool = $this->sql->updateMonth($params);
            for ($i = 0; $i < count($bool); $i++) {
                Db::execute($bool[$i]);
            }
            if ($bool) {
                $this->success();

            } else {
                $this->error();
            }
        }
        $rows = Db::query($this->sql->getMonthTime($ids));
        $row = Db::query($this->sql->getMonthRow($rows));
        $this->assign('row', $row);
        return $this->view->fetch();
    }
}