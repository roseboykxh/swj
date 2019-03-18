define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'review/proofreadings/index',
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
                        {field: 'id',  title: 'ID',operate: false},
                        {field: 'rf_title',  title: '描述',operate: false},
                        {field: 'item_val',  title: '录入值',operate: false},
                        {field: 'chk_item_val',  title: '校验值',operate: false},
                        {field: 'nickname',  title: '录入人员',searchList: $.getJSON("review/proofreadings/getjson")},
                        {field: 'nickname1',  title: '校验人员',operate: false},
                        {field: 'add_time',  title: '创建时间',operate: false},
                        {field: 'set_time',  title: '指定季报时间',operate: false},
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
                                    text: __('校对'),
                                    title: __('校对'),
                                    classname: 'btn btn-xs btn-warning btn-addtabs',
                                    icon: 'fa fa-folder-o',
                                    url: 'review/proofreadings/edit'
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