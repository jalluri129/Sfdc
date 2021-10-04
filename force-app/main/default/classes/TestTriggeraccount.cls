@istest
private class TestTriggeraccount {

    private static testmethod void dummy(){
        
        Account a = new Account();
        a.name = 'prasanth';
         insert a ;      
        Test.startTest();
        a.Description = 'trail';
        update a;
        test.stopTest();
        
    }
}