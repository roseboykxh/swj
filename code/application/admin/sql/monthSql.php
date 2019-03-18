<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019\3\15 0015
 * Time: 11:05
 */

namespace app\admin\sql;


class monthSql
{
    //月报数量
    public function getMonthCount($where)
    {
        $sql = sprintf('SELECT COUNT(*) AS total FROM zc_swj_report_month %s  AND state=2', $where);
        return $sql;
    }
    //月报列表
    public function getMonthList($where, $sort, $order, $offset, $limit)
    {
        $sql = sprintf('SELECT zsrm.*,zsrf.rf_title,zsrf.code,zag.name AS `names`,zsu.unit_name FROM zc_swj_report_month zsrm LEFT JOIN zc_swj_report_form zsrf ON zsrf.id=zsrm.rf_id LEFT JOIN zc_auth_group_access zaga ON zaga.uid = zsrm.op_user_id LEFT JOIN zc_auth_group zag  ON zaga.group_id = zag.id LEFT JOIN zc_swj_unit zsu ON zsu.id = zsrf.unit_id %s AND zsrm.state=2  ORDER BY %s %s  LIMIT %d,%d', $where, $sort, $order, $offset, $limit);
        return $sql;
    }
    //查询时间
    public function getMonthTime($id)
    {
        $sql = sprintf('SELECT * FROM zc_swj_report_month WHERE id= %d',$id);
        return $sql;
    }

    //编辑查询数据
    public function getMonthRow($time)
    {
        $sql = sprintf('SELECT zsrm.*,zsrf.rf_title,zsrf.code,zag.name AS `names`,zsu.unit_name FROM zc_swj_report_month zsrm LEFT JOIN zc_swj_report_form zsrf ON zsrf.id=zsrm.rf_id LEFT JOIN zc_auth_group_access zaga ON zaga.uid = zsrm.op_user_id LEFT JOIN zc_auth_group zag  ON zaga.group_id = zag.id LEFT JOIN zc_swj_unit zsu ON zsu.id = zsrf.unit_id   WHERE  zsrm.state=2  AND zsrm.declare_time = %d',$time[0]['declare_time']);
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



}