global class Batchaccount implements database.Batchable<sobject>
{
    global string[] email = new string[]{'jalluri.prasanth@gmail.com'};
    global database.QueryLocator start (database.BatchableContext bc){ 
         system.debug('hi');
        return database.getQueryLocator('select id from account ');
        
}
global void execute(database.BatchableContext bc,list<sobject> scope){
    
    list<account> acct = new list<account>();
        for (sobject a :scope){
            account newobj = (account)a;
              newobj.description = 'batch apex';
        acct.add(newobj);
            system.debug('hi is this working');
    }
    Database.update(acct) ;
}
    global void finish(database.Batchablecontext bc){}
}