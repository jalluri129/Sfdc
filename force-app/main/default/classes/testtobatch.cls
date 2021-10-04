public class testtobatch implements database.Batchable<sobject>{
    
    public database.QueryLocator start(database.Batchablecontext bc){
        return database.getQueryLocator([select id,name from account limit 5]);
    }
    
    public void execute(database.BatchableContext bc, list<account> scope){
        
        for(account a: scope){
            a.name = 'updated by batch';
        }
        update scope;
    }
    public void finish(database.BatchableContext bc){
        system.debug('batch apex has  finished');
        
    }
}