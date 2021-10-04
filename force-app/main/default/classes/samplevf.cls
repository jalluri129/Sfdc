public class samplevf {

    public integer aval{get;set;}
    public integer bval{set;get;}
    public integer result{set;get;}
    public string operation{set;get;}
    
    public pagereference addit(){
        result = aval+bval;
        operation ='addition';
        return null;
        
    }
    public pagereference subtr(){
        result = aval-bval;
        operation ='subtraction';
        return null;
        
    }
}