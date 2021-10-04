public class TestToQueueable implements Queueable {
    
    private list<account> uselist;
    public TestToQueueable(list<account> expectingfromtrigger){
        this.uselist = expectingfromtrigger;
    }
    
    public void execute(queueablecontext qc){
        
      list<contact> conlis = new list<contact>();
        
        for (account a:uselist ){
            contact n = new contact();
            n.id = a.id;
            n.LastName = a.name;
            conlis.add(n);
        }
        insert conlis;
    }

}