public class Deleteduplicate {
    public static void dup(){

List<Account> a = [Select ID, Name from Account];
set<string> DuplicateCheck = new set<string>();
    set<Id> DupAccountIds = new set<Id>();
    for(Account acc:a)
    {
  if(!DuplicateCheck.add(acc.Name))
    	DupAccountIds.add(acc.Id);  
         }
 
delete [select Id from Account where Id IN :DupAccountIds];
}
}