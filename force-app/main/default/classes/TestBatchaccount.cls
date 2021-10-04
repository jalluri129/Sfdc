@istest
private class TestBatchaccount {
    private static testmethod void createaccrec(){
        
        for ( integer i=0;i<5;i++){
            account a = new account(name ='trail'+i);
         insert a;   
        }
    
    
    batchaccount a = new batchaccount();
        database.executeBatch(a);}

}