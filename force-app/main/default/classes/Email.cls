public class Email {
    public static void sendMail(String address , String subject , String body){
        //Use default salesforce classes and methods to send an email
        //Messaging -Namespace //singleEmailmessage - class // SettoAddress,setSubject,setPlaintextBody - method
        
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        //converting string datatype to list of string address 
        String[] toAddresses = new String[]{address};
             
        mail.setToAddresses(toAddresses);
        mail.setSubject(subject);
        mail.setPlainTextBody(body);
        
        
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
       
    }
}