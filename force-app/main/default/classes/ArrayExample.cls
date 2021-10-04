public class ArrayExample {
    public Account[] myArray{get;set;}
    
    public ArrayExample(){
        
        Account a1 = new Account(name ='venkat',industry ='Chemical');
         Account a2 = new Account(name ='siva',industry ='Chemical');
        myArray = new Account[] {a1,a2};
    }

}