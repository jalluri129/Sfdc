public class Collectionpract {
    
    public static void methodlist(){
        list<integer> l = new list<integer>();
        for (integer i=0; i<10; i++){
         l.add(i);      
        }system.debug('the value of '+l);
    }
    public static void methodmap(){
        map<integer,string> m = new map<integer,string>();
        m.put(1,'qwer');
        m.put(2,'hio');
        m.put(3,'sff');
        system.debug('the value of map is '+m.get(1));
        
        }
    
    public static void soqlst(){
        List<Account> acct = new list<Account>();
        for (integer i = 11; i< 15;i++){
            Account a = new Account(name ='test..'+i);
            acct.add(a);
        }
        insert acct;
    }
    }