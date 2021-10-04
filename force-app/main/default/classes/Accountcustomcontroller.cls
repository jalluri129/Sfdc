public class Accountcustomcontroller {

    public PageReference save() {
        update account;
        return null;
    }


    private final Account account;
    public Accountcustomcontroller(){
    account =[select id,site,name from account where id = :Apexpages.currentpage().getparameters().get('id')];
        }
    public Account getAccount(){
    return account;
    }

}