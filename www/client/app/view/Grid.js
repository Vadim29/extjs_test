Ext.define('APP.view.Grid', {
    extend: 'Ext.grid.Panel',
    xtype: 'app-GridView',
    title: 'Grid Panel',
    store: 'UsersDataStore',
    columns: [
        { 
            text: 'Id',
            dataIndex: 'user_id',
            hidden: true, 
        },
        { 
            text: 'Name',  
            dataIndex: 'name', 
            flex: 1,
        },
        { 
            text: 'Education', 
            dataIndex: 'education', 
            flex: 1,
            editor: {
                allowBlank: false
            },
            filter: 'list'
        },
        { 
            text: 'City',
            dataIndex: 'city',
            flex: 1,
            filter: 'list'
        }
    ],
    plugins: [
        Ext.create(
            'Ext.grid.plugin.CellEditing',
            {
                clicksToEdit: 1
            }
        ),
        'gridfilters'
    ]   
});