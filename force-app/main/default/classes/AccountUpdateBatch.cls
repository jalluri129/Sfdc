global class AccountUpdateBatch implements Database.Batchable<sObject>,Database.Stateful,Schedulable {
    public  Integer success=0;
    public  integer failure=0;
    List<Account> updateList= new List<Account>();
    global Database.QueryLocator start(Database.BatchableContext bc){
        
        return Database.getQueryLocator('select id,name from Account where accountname =test');
        
    }
    
    global void execute(Database.BatchableContext bc, List<Account> scope){
        for(Account a:scope){
            
            a.AccountNumber='1232124966';
            updateList.add(a);
            
        }
        try{
            update updateList;
        } catch(exception e){
            system.debug('exception is '+ e.getMessage());
        }
        List<Database.SaveResult> result= Database.update(updateList,false);
        for(Database.SaveResult sr:result){
            if(sr.issuccess()){
                success++;
            }else{
                failure++;
            }
        }
        
    }
   global void execute(SchedulableContext sc){
        AccountUpdateBatch ap= new AccountUpdateBatch();
        Database.executeBatch(ap,5); 
    }
    global void finish(Database.BatchableContext bc) {
      AsyncApexJob a= [ SELECT Id, JobItemsProcessed, TotalJobItems, NumberOfErrors FROM AsyncApexJob where id=:bc.getJobId() limit 1];
        
        system.debug('success '+ success );
        Messaging.SingleEmailMessage email= new Messaging.SingleEmailMessage();
        List <String> toAddress= new List<String>{'jalluri.prasanth@gmail.com'};
            email.setToAddresses(toAddress);
           email.setSubject('Batch status');
          email.setPlainTextBody('total batches processed '+ a.JobItemsProcessed);
        List<Messaging.SingleEmailMessage> emailList2= new List<Messaging.SingleEmailMessage>();
            emailList2.add(email);
          Messaging.sendEmail(emailList2);
    }
    

}