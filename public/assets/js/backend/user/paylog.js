define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'user/paylog/index',
                    add_url: 'user/paylog/add',
                    edit_url: 'user/paylog/edit',
                    del_url: 'user/paylog/del',
                    multi_url: 'user/paylog/multi',
                    table: 'pay_log',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'id',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id')},
                        {field: 'user.username', title: __('Uid')},
                        {field: 'pay_way', title: __('Pay_way')},
                        {field: 'money', title: __('Money')},
                        {field: 'score', title: __('Score')},
                        {field: 'created', title: __('Created')},
                        {field: 'success', title: __('Success'), visible:false, searchList: {"4":__('Success 4')}},
                        {field: 'success_text', title: __('Success'), operate:false},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});