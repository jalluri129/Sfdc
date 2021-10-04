public class StringArrayTest {
    
    public static List<string> generateStringArray(Integer n)
    {
        List<String> myli = new List<String>();
        
        for(Integer i=0;i<n;i++)
        {
            myli.add('Test'+i);
            System.debug(myli[i]);
        }
        return myli;
        
    }
}