<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019\3\12 0012
 * Time: 9:31
 */

namespace app\admin\sql;


class scoreSql
{
    public function getScoreCount($where)
    {
        $sql = sprintf('SELECT COUNT(*) AS total FROM zc_swj_score_info %s ', $where);
        return $sql;
    }

    public function getScoreList($where, $sort, $order, $offset, $limit)
    {
        $sql = sprintf('SELECT * FROM zc_swj_score_info  %s  ORDER BY %s %s  LIMIT %d,%d', $where, $sort, $order, $offset, $limit);
        return $sql;
    }

    public function insertScore($data)
    {
        $add_time = time();
        $effective_time = strtotime($data['effective_time']);
        $sql = sprintf('INSERT INTO zc_swj_score_info(start_val,end_val,score,state,effective_time,`type`,add_time)
VALUES(\'%s\',\'%s\',%d,%d,%d,\'%s\',%d)', $data['start_val'], $data['end_val'], $data['score'], $data['state'], $effective_time, 'y', $add_time);
        return $sql;
    }

    //编辑查询数据
    public function getScoreRow($id)
    {
        $sql = sprintf('SELECT * FROM zc_swj_score_info   WHERE id = %d', $id);
        return $sql;
    }

    public function updateScore($data)
    {
        $effective_time = strtotime($data['effective_time']);
        $sql = sprintf('UPDATE zc_swj_score_info SET start_val=\'%s\',end_val=\'%s\',score=%d,state=%d,effective_time=%d WHERE id=%d',
            $data['start_val'], $data['end_val'], $data['score'], $data['state'], $effective_time, $data['id']);
        return $sql;
    }

    public function delScore($ids)
    {
        $sql = sprintf('DELETE FROM zc_swj_report_month WHERE id IN (%s)', $ids);
        return $sql;
    }

}