public class Example {
    
    public integer bvalue{get;set;}
    public integer avalue{get;set;}
    public integer result{get;set;}
    public string operation{get;set;}
        
    public Pagereference subb()
    {
        
        result = avalue - bvalue ;
        operation = 'subtraction';
        return null;
    }
                
     public Pagereference Addd()
    {
        
        result = avalue +bvalue ;
        operation = 'addition ';
        return null;
    }

}