Ext.define('APP.store.UsersDataStore', {
    extend: 'Ext.data.Store',
    requires: [
        'APP.model.UsersData'
    ],
    storeId: 'UsersDataStore',
    model: 'APP.model.UsersData',
    autoSync: true,
    proxy: {
        type: 'ajax',
        url: '/server/controllers',
        reader: {
            type: 'json',
            rootProperty: 'users'
        },
        noCache: false,
        limitParam: undefined,
        pageParam: undefined,
        startParam: undefined
    },   
    remoteFilter: false,
    autoLoad: true
});


