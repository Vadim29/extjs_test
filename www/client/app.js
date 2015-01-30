Ext.application({
    name: 'APP',
    
    views: [
        'Grid'
    ],
    
    controllers: [
        'Grid'
    ],

    stores: [
        'UsersDataStore'
    ],

    launch: function() {
        Ext.create('Ext.container.Viewport', {
            layout: {
                type: 'hbox',
                align: 'stretch'
            },
            
            items: [
                { 
                    xtype: 'app-GridView',
                    flex: 1
                }
            ]
        });
    }
});