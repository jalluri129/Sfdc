public class Mailtest {

    public PageReference show(){
        
        document d = [select id from document where name ='logo'];
        messaging.SingleEmailMessage Emailtry = new messaging.SingleEmailMessage();
        
        string[] toaddr = new string[]{'jalluri.prasanth@gmail.com','prasanth10093@gmail.com'};
            emailtry.setToAddresses(toaddr);
        string[] ccaddr = new string[]{'prasanth10093@gmail.com'};
            emailtry.setCcAddresses(ccaddr);
        emailtry.setSubject('Test Email');
        emailtry.setPlainTextBody('Hi this is just a sample mail.');
        
        
                   
        messaging.sendEmail(new messaging.SingleEmailMessage[] {emailtry});
        
        return null;
    }
}