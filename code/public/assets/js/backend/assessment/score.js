define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'assessment/score/index',
                    add_url: 'assessment/score/add',
                    edit_url: 'assessment/score/edit',
                    del_url: 'assessment/score/del',
                    multi_url: 'assessment/score/multi'
                }
            });

            var table = $("#table");

            //在表格内容渲染完成后回调的事件


            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                showToggle: true,//切换格式
                showColumns: true,//列
                commonSearch: true,//检索
                showExport: false,//导出
                exportTypes: [ 'excel'],
                columns: [
                    [
                        {field: 'states', checkbox: true},
                        {field: 'id', title: 'ID',sortable: true},
                        {field: 'start_val',  title: '开始值',operate: 'LIKE'},
                        {field: 'end_val', title: '结束值',operate: false},
                        {field: 'score', title:  '分数',operate: false},
                        {field: 'effective_time', title:  '有效时间',operate: false},
                        {field: 'type', title:  '评分类型',operate: false},
                        {field: 'add_time', title:  '创建时间',operate: false},
                        {field: 'state', title:  '可用状态',operate: false},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: function (value, row, index) {
                            return Table.api.formatter.operate.call(this, value, row, index);
                        }}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Form.api.bindevent($("form[role=form]"));
        },
        edit: function () {
            Form.api.bindevent($("form[role=form]"));
        }
    };
    return Controller;
});