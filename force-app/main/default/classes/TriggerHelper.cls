public class TriggerHelper {

    public static void beforeInsert(){
        system.debug('Before insert trigger Fired..');
        
    }
    public static void beforeUpdate(){
         system.debug('Before update trigger Fired..');        
    }
  
    public static void afterUndelete(){
         system.debug('After Undelete trigger Fired..');
        
    }
}