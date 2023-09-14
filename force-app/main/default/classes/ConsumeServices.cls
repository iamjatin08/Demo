public class ConsumeServices {
    public void getDetails(){
        Http  http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json; charset=UTF-8');
        
        // Set the body as a JSON object
        request.setBody('{"name" : "mighty moose"}');
        HttpResponse response = http.send(request);
        
        // Parse the JSON response
        if(response.getStatusCode() != 201){
            system.debug('The status code  retured was not expected : ' + response.getStatusCode() + ' ' + 
                         response.getstatus() );
        }else{
            system.debug(response.getBody());
        }
    }
}