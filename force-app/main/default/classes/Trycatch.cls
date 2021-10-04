public class Trycatch {
    
    public static void trycatex(){
        integer i;
        for ( i=0; i<5; i++){
          Account acct = new Account(Name ='test'+i);
        try{
            insert acct;
            system.debug('Account has been created');
           }
        catch(exception e)
        {
        system.debug('exception has been caught'+e);           
    }
}
        system.debug('Limits.getdmlstatments'+Limits.getDmlStatements());
        system.debug('Limit getdmlRows'+Limits.getdmlrows());
        system.debug('Limit getdmlstatments'+Limits.getLimitDmlRows());
        system.debug('Limit getdmlstatments'+Limits.getLimitDmlStatements());
    }
}