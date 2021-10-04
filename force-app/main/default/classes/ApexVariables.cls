public class ApexVariables {

     Static Integer i = 20;
    //static variable
    Integer l = 30 ;
    //instance variable
    public static void methodOne(){
        Integer j = 50;
        //local variable
        Integer k;
        k= i+j;
        system.debug('the value of k is..'+k);
    }
 
}