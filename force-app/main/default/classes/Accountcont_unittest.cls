@istest
private class Accountcont_unittest {
    @istest static void contacttest(){
        Account acc = new Account();
        acc.phone = '23432';
        acc.BillingCity= 'Hyd';
        test.startTest();
            insert acc;
        test.stopTest();
    }

}