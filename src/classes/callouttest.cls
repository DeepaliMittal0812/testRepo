public class callouttest {

    public static void abc(){

  //Make sure your Salesforce instance URL is added in remote site settings
String sfdcURL = URL.getSalesforceBaseUrl().toExternalForm(); 
String restAPIURL = sfdcURL + '/services/data/v29.0/sobjects/';  
  
HttpRequest httpRequest = new HttpRequest();  
httpRequest.setMethod('GET');   

httpRequest.setEndpoint(restAPIURL);  
String response = '';
try {  
		 Http http = new Http();   
		 HttpResponse httpResponse = http.send(httpRequest);  
		 if (httpResponse.getStatusCode() == 200 ) {  
			   response = JSON.serializePretty( JSON.deserializeUntyped(httpResponse.getBody()) );  
		 } else {  
			   System.debug(' httpResponse ' + httpResponse.getBody() );  
			 ///  throw new CalloutException( httpResponse.getBody() );  
		 }   
} catch( System.Exception e) {  
		 System.debug('ERROR: '+ e);  
		 throw e;  
}  
System.debug(' ** response ** : ' + response );  
    
}
}