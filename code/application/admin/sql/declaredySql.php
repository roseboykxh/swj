<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019\3\7 0007
 * Time: 16:57
 */

namespace app\admin\sql;


class declaredySql
{
    public function getDeclaredyCount($where){
        $sql = sprintf('SELECT COUNT(*) AS total FROM zc_swj_report_year %s ',$where);
        return $sql;
    }

    public function getDeclaredyList($where,$sort,$order,$offset,$limit){
        $sql = sprintf('SELECT zsry.*,zsrf.rf_title,zu.username,zu1.username AS username1 FROM zc_swj_report_year zsry LEFT JOIN zc_swj_report_form zsrf ON zsrf.id=zsry.rf_id LEFT JOIN zc_user zu ON zu.id=zsry.op_user_id LEFT JOIN zc_user zu1 ON zu1.id = zsry.chk_user_id  %s    ORDER BY %s %s  LIMIT %d,%d',$where,$sort,$order,$offset,$limit);
        return $sql;
    }

    public function insertDeclaredy($data)
    {
        $add_time = time();
        $set_time = strtotime($data['set_time']);
        $admin_id = $data['admin_id'];
        unset($data['set_time']);
        unset($data['admin_id']);
        $sqlArr = [];
        foreach ($data as $key => $value) {
            $sql = sprintf('INSERT INTO zc_swj_report_year(rf_id,item_val,op_user_id,add_time,set_time)VALUES(%d,\'%s\',%d,%d,%d)', $key, $value, $admin_id, $add_time, $set_time);
            array_push($sqlArr,$sql);
        }
        return $sqlArr;
    }
    //添加时 选择的描述
    public function getDeclaredyRows()
    {
        $sql = sprintf('SELECT zsrf.*,zsu.unit_name FROM zc_swj_report_form zsrf LEFT JOIN zc_swj_unit zsu ON zsu.id = zsrf.unit_id  WHERE rf_class=\'y\'');
        return $sql;
    }
    //编辑查询数据
    public function getDeclaredmRow($id)
    {
        $sql = sprintf('SELECT zsry.*,zsrf.rf_title,zsrf.code,zsu.unit_name FROM zc_swj_report_year zsry LEFT JOIN zc_swj_report_form zsrf ON zsry.rf_id = zsrf.id LEFT JOIN zc_swj_unit zsu ON zsu.id = zsrf.unit_id WHERE zsrm.id = %d', $id);
        return $sql;
    }
    public function updateDeclaredy($data){
        $add_time = time();
        $set_time = strtotime($data['set_time']);
        $sql = sprintf('UPDATE zc_swj_report_year SET rf_id=%d,item_val=\'%s\',op_user_id=%d,add_time=%d,set_time=%d WHERE id=%d',$data['rf_id'],$data['item_val'],$data['op_user_id'],$add_time,$set_time,$data['id']);
        return $sql;
    }

    public function delDeclaredy($ids){
        $sql = sprintf('DELETE FROM zc_swj_report_year WHERE id IN (%s)',$ids);
        return $sql;
    }
}