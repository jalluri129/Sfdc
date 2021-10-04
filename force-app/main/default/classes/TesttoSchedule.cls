public class TesttoSchedule implements schedulable{
    
        public void execute (Schedulablecontext sc){
        
        system.enqueueJob(new Testtoqueueableschedule());
        database.executeBatch(new testtobatch(),5);    
    }
}