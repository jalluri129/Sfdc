@istest
public class Fitnesstest {
    @istest
    public static void calculateBMItest(){
        Fitness ft = new Fitness();
       integer a= ft.calculateBMI(300,10);
        system.assertEquals(3, a);
    }
    
    @istest
    public static void calculatepacetest(){
        Fitness ft = new Fitness();
        integer b = ft.calculatepace(18, 180);
        system.assertEquals(0, b);
    }

}