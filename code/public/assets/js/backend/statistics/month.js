define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'statistics/month/index',
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
                        {field: 'names',  title: '分组',operate: false},
                        {field: 'rf_title',  title: '描述',operate: false},
                        {field: 'code',  title: '代码',operate: false},
                        {field: 'chk_item_val',  title: '校验值',operate: false},
                        {field: 'unit_name',  title: '单位',operate: false},
                        {field: 'declare_time',  title: '申报时间',operate: false},
                        {
                            field: 'buttons',
                            width: "120px",
                            title: __('操作'),
                            table: table,
                            operate: false,
                            events: Table.api.events.operate,
                            buttons: [
                                {
                                    name: 'addtabs',
                                    text: __('选中'),
                                    title: __('选中'),
                                    classname: 'btn btn-xs btn-warning btn-addtabs',
                                    icon: 'fa fa-folder-o',
                                    url: 'statistics/month/edit'
                                }
                            ],
                            formatter: Table.api.formatter.buttons
                        }
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