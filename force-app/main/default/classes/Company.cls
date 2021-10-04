public class Company {
    
    public string companyname;
    public string location;
    public string ceo;
    
    
    private class client{
        public string clientname;
        public string clientmail;
        
        client(string clientname,string clientmail ){
            this.clientname = clientname;
            this.clientmail = clientmail;
        }
    }
    
    private list<client> customers = new list<client>();
    
    public void addnewcustomer(string clientname,string clientmail ){
        client customer = new client(clientname,clientmail);
        customers.add(customer);
    }
    
    public void getcustomer(){
        for (client c: customers){
            system.debug('customer name '+c.clientname+' customer mail'+c.clientmail);
        }
        
    }
}