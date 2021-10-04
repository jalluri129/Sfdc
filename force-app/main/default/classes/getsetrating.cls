public class getsetrating {
    
    public list<account> a = new list<account>();
    
    public list<account> getacct(){
        return a;
    }

    public void gethot(){
        a=[select name,industry,rating from account where rating ='hot'];
    }
      public void getwarm(){
        a=[select name,industry,rating from account where rating ='warm'];
    }
      public void getcold(){
        a=[select name,industry,rating from account where rating ='cold'];
    }
}