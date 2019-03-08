<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019\3\6 0006
 * Time: 15:38
 */

namespace app\admin\sql;


class seasonmodularSql
{
    public function getSeasonmodularCount($where){
        $sql = sprintf('SELECT COUNT(*) AS total FROM zc_swj_report_form %s AND rf_class=\'q\' ',$where);
        return $sql;
    }

    public function getSeasonmodularList($where,$sort,$order,$offset,$limit){
        $sql = sprintf('SELECT * FROM zc_swj_report_form %s AND rf_class=\'q\' ORDER BY %s %s  LIMIT %d,%d',$where,$sort,$order,$offset,$limit);
        return $sql;
    }

    public function insertSeasonmodular($data){
        $sql = sprintf('INSERT INTO zc_swj_report_form(rf_title,code,unit_id,css_class,form_type,`number`,rf_class,rf_year)
VALUES(\'%s\',\'%s\',\'%s\',\'%s\',\'%s\',%d,\'%s\',\'%s\')',$data['rf_title'],$data['code'],$data['unit_id'],$data['css_class'],$data['form_type'],$data['number'],$data['rf_class'],$data['rf_year']);
        return $sql;
    }

    public function getSeasonmodularRow($id){
        $sql = sprintf('SELECT * FROM zc_swj_report_form WHERE id = %d',$id);
        return $sql;
    }

    public function updateSeasonmodular($data){
        $sql = sprintf('UPDATE zc_swj_report_form SET rf_title=\'%s\',code=\'%s\',unit_id=\'%s\',css_class=\'%s\',form_type=\'%s\',`number`=%d,rf_class=\'%s\',rf_year=\'%s\'
 WHERE id=%d',$data['rf_title'],$data['code'],$data['unit_id'],$data['css_class'],$data['form_type'],$data['number'],$data['rf_class'],$data['rf_year'],$data['id']);
        return $sql;
    }

    public function delSeasonmodular($ids){
        $sql = sprintf('DELETE FROM zc_swj_report_form WHERE id IN (%s)',$ids);
        return $sql;
    }

}