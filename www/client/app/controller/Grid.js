Ext.define('APP.controller.Grid', {
    extend: 'Ext.app.Controller',
    
    init: function() {
         this.control({
             'app-GridView': {
                 edit: this.saveData
             }
         });
     },
    
    saveData: function(editor, obj) {
        if(obj.record.dirty){ 
            Ext.Ajax.request({
                method: 'POST',
                url: '/server/controllers/index.php',
                params: {
                    record: Ext.encode(this.getStore('UsersDataStore').getAt(obj.rowIdx).data)
                },
                scope: this,
                success: this.onSaveSuccess,
                failure: this.onSaveFailure
            });
        }
    },
    
    onSaveSuccess: function(data){
        if(data['responseText'] != '') {
            alert(data['responseText']);
        }
    },
    
    onSaveFailure: function(data){
        console.log(data);
    }
    
});