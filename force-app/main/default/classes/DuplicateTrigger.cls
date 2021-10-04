public class DuplicateTrigger {
    
    public static void DuplicAcc(list<account> acct){
        list<account> acc = new list<account>();
        for (account a : acct)
        {
            acc= [select name from account where name = :a.name];
            if(acc.size() > 0){
                a.addError('this is duplicate account1');
            }
            else 
                a.Description ='update by trigger1';
        }
    }

}