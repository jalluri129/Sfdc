public class customers {
    public static void customeraccount(){
      list<apex_customer__c> set1 = [select Name, apex_customer_status__c from apex_customer__c where apex_customer_status__c = 'paid'];
        for(apex_customer__c a: set1){
            apex_invoice__c set2 = new apex_invoice__c();
            set2.APEX_Description__c = 'invoice created as status is paid';
            set2.Apex_customer__c = a.id;
            insert set2;
            
            
        }   
    }

}