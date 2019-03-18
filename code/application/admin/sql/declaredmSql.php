<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019\3\7 0007
 * Time: 16:57
 */

namespace app\admin\sql;


class declaredmSql
{
    public function getDeclaredmCount($where)
    {
        $sql = sprintf('SELECT COUNT(*) AS total FROM zc_swj_report_month %s ', $where);
        return $sql;
    }

    public function getDeclaredmList($where, $sort, $order, $offset, $limit)
    {
        $sql = sprintf('SELECT zsrm.*,zsrf.rf_title,zu.username,zu1.username AS username1 FROM zc_swj_report_month zsrm LEFT JOIN zc_swj_report_form zsrf ON zsrf.id=zsrm.rf_id LEFT JOIN zc_user zu ON zu.id=zsrm.op_user_id LEFT JOIN zc_user zu1 ON zu1.id = zsrm.chk_user_id  %s AND zsrf.rf_class = \'m\'   ORDER BY %s %s  LIMIT %d,%d', $where, $sort, $order, $offset, $limit);
        return $sql;
    }

    public function insertDeclaredm($data)
    {
        $add_time = time();
        $set_time = strtotime($data['set_time']);
        $admin_id = $data['admin_id'];
        unset($data['set_time']);
        unset($data['admin_id']);
        $sqlArr = [];
        foreach ($data as $key => $value) {
            $sql = sprintf('INSERT INTO zc_swj_report_month(rf_id,item_val,op_user_id,add_time,set_time)VALUES(%d,\'%s\',%d,%d,%d)', $key, $value, $admin_id, $add_time, $set_time);
            array_push($sqlArr,$sql);
        }
        return $sqlArr;
    }
    //添加时 选择的描述
    public function getDeclaredmRows()
    {
        $sql = sprintf('SELECT zsrf.*,zsu.unit_name FROM zc_swj_report_form zsrf LEFT JOIN zc_swj_unit zsu ON zsu.id = zsrf.unit_id  WHERE rf_class=\'m\'');
        return $sql;
    }
    //编辑查询数据
    public function getDeclaredmRow($id)
    {
        $sql = sprintf('SELECT zsrm.*,zsrf.rf_title,zsrf.code,zsu.unit_name FROM zc_swj_report_month zsrm LEFT JOIN zc_swj_report_form zsrf ON zsrm.rf_id = zsrf.id LEFT JOIN zc_swj_unit zsu ON zsu.id = zsrf.unit_id WHERE zsrm.id = %d', $id);
        return $sql;
    }

    public function updateDeclaredm($data)
    {
        $add_time = time();
        $set_time = strtotime($data['set_time']);
        $sql = sprintf('UPDATE zc_swj_report_month SET rf_id=%d,item_val=\'%s\',op_user_id=%d,add_time=%d,set_time=%d WHERE id=%d', $data['rf_id'], $data['item_val'], $data['op_user_id'], $add_time, $set_time, $data['id']);
        return $sql;
    }

    public function delDeclaredm($ids)
    {
        $sql = sprintf('DELETE FROM zc_swj_report_month WHERE id IN (%s)', $ids);
        return $sql;
    }
}