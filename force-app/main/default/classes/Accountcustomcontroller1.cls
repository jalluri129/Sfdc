public class Accountcustomcontroller1 {

public Account account {get;private set;}
public Accountcustomcontroller1(){
Id id = apexpages.currentpage().getparameters().get('id');
 account = (id==null)? new account():[select id,name,site,rating from account where Id =: id];
}
public pagereference save(){
upsert(account);

pageReference success = new Apexpages.standardcontroller(account).view();
return success;
}
}