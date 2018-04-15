define(['jquery', 'bootstrap', 'backend', 'table', 'form'],
    function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'vedio/index',
                    add_url: 'vedio/add',
                    edit_url: 'vedio/edit',
                    del_url: 'vedio/del',
                    multi_url: 'vedio/multi',
                    table: 'vedio',
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
                        {field: 'user.username', title:'上传用户'},
                        {field: 'name', title: __('Name')},
                        {field: 'desc', title: __('Desc')},
                        {field: 'tags', title: __('Tags')},
                        {field: 'fengmian', title: __('Fengmian'),formatter: Table.api.formatter.image, operate: false},
                        {field: 'wait_fengmian', title: __('Wait_fengmian'),formatter: Table.api.formatter.image, operate: false},
                        {field: 'url', title: __('Url'), formatter: Table.api.formatter.url},
                        {field: 'is_tj', title: __('Is_tj'),formatter:function($v){
                            return $v?'是':'否';
                            }},
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