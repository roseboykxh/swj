define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'modular/monthmodular/index',
                    add_url: 'modular/monthmodular/add',
                    edit_url: 'modular/monthmodular/edit',
                    del_url: 'modular/monthmodular/del',
                    multi_url: 'modular/monthmodular/multi'
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
                        {field: 'state', checkbox: true, },
                        {field: 'id', title: 'ID',sortable: true},
                        {field: 'rf_title',  title: __('rfTitle'),operate: 'LIKE'},
                        {field: 'code', title: __('Code'),operate: 'LIKE'},
                        {field: 'unit_id', title: __('unitId'),operate: false},
                        {field: 'css_class', title: __('cssClass'),operate: false},
                        {field: 'form_type', title: __('formType'),operate: false},
                        {field: 'number', title: __('numBer'),operate: false},
                        {field: 'rf_class', title: __('rfClass'),operate: false},
                        {field: 'rf_year', title: __('rfYear'),operate: false},
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