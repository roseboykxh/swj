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
        $sql = sprintf('SELECT COUNT(*) AS total FROM zc_swj_report_month %s ',$where);
        return $sql;
    }

    public function getDeclaredyList($where,$sort,$order,$offset,$limit){
        $sql = sprintf('SELECT zsrm.*,zsrf.rf_title,zu.username,zu1.username AS username1 FROM zc_swj_report_month zsrm LEFT JOIN zc_swj_report_form zsrf ON zsrf.id=zsrm.rf_id LEFT JOIN zc_user zu ON zu.id=zsrm.op_user_id LEFT JOIN zc_user zu1 ON zu1.id = zsrm.chk_user_id  %s AND zsrf.rf_class = \'y\'   ORDER BY %s %s  LIMIT %d,%d',$where,$sort,$order,$offset,$limit);
        return $sql;
    }

    public function insertDeclaredy($data){
        $add_time = time();
        $set_time = strtotime($data['set_time']);
        $sql = sprintf('INSERT INTO zc_swj_report_month(rf_id,item_val,op_user_id,add_time,set_time)VALUES(%d,\'%s\',%d,%d,%d)',$data['rf_id'],$data['item_val'],$data['op_user_id'],$add_time,$set_time);
        return $sql;
    }
    //编辑查询数据
    public function getDeclaredyRow($id){
        $sql = sprintf('SELECT * FROM zc_swj_report_month zsrm WHERE id = %d',$id);
        return $sql;
    }
    //添加时 选择的描述
    public function getDeclaredyRows(){
        $sql = sprintf('SELECT id,rf_title FROM zc_swj_report_form WHERE rf_class=\'y\'');
        return $sql;
    }

    //添加时 选择的录入人员姓名
    public function getDeclaredyRowss(){
        $sql = sprintf('SELECT id,username FROM zc_user ');
        return $sql;
    }
    public function updateDeclaredy($data){
        $add_time = time();
        $set_time = strtotime($data['set_time']);
        $sql = sprintf('UPDATE zc_swj_report_month SET rf_id=%d,item_val=\'%s\',op_user_id=%d,add_time=%d,set_time=%d WHERE id=%d',$data['rf_id'],$data['item_val'],$data['op_user_id'],$add_time,$set_time,$data['id']);
        return $sql;
    }

    public function delDeclaredy($ids){
        $sql = sprintf('DELETE FROM zc_swj_report_month WHERE id IN (%s)',$ids);
        return $sql;
    }
}