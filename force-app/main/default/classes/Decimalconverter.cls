public class Decimalconverter {
    
    public static Decimal convertcurrenytoINR(Decimal eur)
    {
        Decimal inr = 0.0 ;
        HTTP H = NEW HTTP();
        HTTPRequest req = new HTTPRequest();
        
        req.setEndpoint('https://api.exchangeratesapi.io/latest');
        req.setMethod('GET');
        
        HTTPresponse res = h.send(req);
        Map<string,object> jsonbody = (map<String,object>)json.deserializeUntyped(res.getBody());
        system.debug(jsonbody);
        Map<String,object> mMap = (map<String,object>) jsonbody.get('rates');
        Decimal conversionrate = (decimal) mMap.get('AUD');
        system.debug(conversionrate);
        inr = conversionrate * eur;
        return inr;
    }

}