define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'declared/declareds/index',
                    add_url: 'declared/declareds/add',
                    edit_url: 'declared/declareds/edit',
                    del_url: 'declared/declareds/del',
                    multi_url: 'declared/declareds/multi'
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
                        {field: 'state', checkbox: true},
                        {field: 'id', title: 'ID',sortable: true},
                        {field: 'rf_title',  title: __('rfTitle'),operate: 'LIKE'},
                        {field: 'item_val', title: __('itemVal'),operate: false},
                        {field: 'chk_item_val', title: __('chkItemVal'),operate: false},
                        {field: 'username', title: __('opUserId'),operate: false},
                        {field: 'username1', title: __('chkUserId'),operate: false},
                        {field: 'set_time', title: __('setTime'),operate: false},
                        {field: 'add_time', title: __('addTime'),operate: false},
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