<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019\3\13 0013
 * Time: 9:36
 */

namespace app\admin\sql;


class proofreadingmSql
{
    public function getProofreadingmCount($where)
    {
        $sql = sprintf('SELECT COUNT(*) AS total FROM zc_swj_report_month %s  AND state=1', $where);
        return $sql;
    }

    public function getProofreadingmList($where, $sort, $order, $offset, $limit)
    {
        $sql = sprintf('SELECT zsrm.*,zsrf.rf_title,za.nickname,za1.nickname AS nickname1 FROM zc_swj_report_month zsrm LEFT JOIN zc_swj_report_form zsrf ON zsrf.id=zsrm.rf_id LEFT JOIN zc_admin za ON za.id=zsrm.op_user_id LEFT JOIN zc_admin za1 ON za1.id = zsrm.chk_user_id  %s AND zsrm.state=1 AND zsrf.rf_class = \'m\' ORDER BY %s %s  LIMIT %d,%d', $where, $sort, $order, $offset, $limit);
        return $sql;
    }

    //编辑查询数据
    public function getProofreadingmRow()
    {
        $sql = sprintf('SELECT zsrm.*,zsrf.rf_title,zsrf.code,zsu.unit_name,za.nickname FROM zc_swj_report_month zsrm LEFT JOIN zc_swj_report_form zsrf ON zsrm.rf_id = zsrf.id LEFT JOIN zc_swj_unit zsu ON zsu.id = zsrf.unit_id LEFT JOIN zc_admin za ON za.id=zsrm.op_user_id WHERE  zsrm.state=1 AND zsrf.rf_class = \'m\'');
        return $sql;
    }

    public function updateProofreadingm($data)
    {
        $admin_id = $data['admin_id'];
        unset($data['admin_id']);
        $sqlArr = [];
        foreach ($data as $key => $value) {
        $sql = sprintf('UPDATE zc_swj_report_month SET chk_item_val=\'%s\',chk_user_id=%d,state=2 WHERE id=%d',
            $value, $admin_id, $key);
            array_push($sqlArr,$sql);
        }
        return $sqlArr;
    }

    public function getJson()
    {
        $sql = sprintf('SELECT * FROM zc_auth_group WHERE pid = 6');
        return $sql;
    }

}