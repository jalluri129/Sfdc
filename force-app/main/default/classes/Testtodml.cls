public class Testtodml {
    
    public pagereference show(){ 
    list<account> accli = new list <account>();
    
    account a = new account(name ='test34',industry='banking');
    account b = new account(name ='test45', industry ='netwroking');
    
    accli.add(a);
    accli.add(b);
        database.SaveResult[] sr = database.insert(accli,false);
        return null;
}
}