public with sharing class covid19Controller {
    public covid19Controller() {}

    @AuraEnabled
    public static covid19Parser getCovidData(){
        string baseURL = 'https://api.covid19api.com/summary';
        HTTPRequest request = new HTTPRequest();
        request.setEndPoint(baseURL);
        request.setMethod('GET');
        request.setHeader('Accept','application/json');

        Http h = new Http();
        HttpResponse response = h.send(request);
        
        covid19Parser prsr = covid19Parser.parse(response.getBody().replace('"Global":','"AllStats":'));
        System.debug(response.getBody());
        return prsr;
        
    }
}