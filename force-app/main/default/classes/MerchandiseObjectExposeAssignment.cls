@restResource(urlmapping='/mymerchandise/*')
global class MerchandiseObjectExposeAssignment {
	@httpGet
    global static list<Merchandise__c> getAccount(){
        return [select id, Name , 	Merchandise_Price__c, Merchandise_Stocks__c, 	Merchandise_Desc__c from Merchandise__c];
    }
    
    @httpPost
    global static void insertRecord(list<Merchandise__c> arr){
        for(Merchandise__c er : arr) {
            Merchandise__c newRecord = new Merchandise__c();
            newRecord.name = er.name;
            newRecord.Merchandise_Desc__c = er.Merchandise_Desc__c;
            newRecord.Merchandise_Stocks__c = er.Merchandise_Stocks__c;
            newRecord.Merchandise_Price__c = er.Merchandise_Price__c;
            insert newRecord;
        }
    }
    
    @HttpDelete
    global static void deleteRecord(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String actID = req.requestURI.substring(req.requestURI.lastIndexOf('/') + 1);
        merchandise__c act = [select id , name from merchandise__c where id =:actID];
        delete act;
    }
}