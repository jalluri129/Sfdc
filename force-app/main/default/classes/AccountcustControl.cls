public class AccountcustControl {

    public pagereference save(){
    update account;
    return null;
    }

    private final Account account;
    
    public AccountcustControl(){
    account = [select id,name from account where id = : apexpages.currentpage().getparameters().get('id')];
    }

    public Account getaccount(){
    return account;
    }
}