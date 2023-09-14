@restResource(urlmapping='/myaccount/*')
global class MyWebDemo {
	
    @httpGet
    global static list<Account> getAllAccount(){
        List<Account> act = [select id,name from account];
        return act;
    }
    
    @httpPost
    global static void insertAccount(string accName) {
        Account act = new Account();
        act.name = accName;
        insert act;
    }
    
    @httpDelete
    global static void deleteAccount(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String actID = req.requestURI.substring(req.requestURI.lastIndexOf('/') + 1);
        Account act = [select id , name from account where id =:actID];
        delete act;
    }
    
    @httpPut
    global static void updateAcccount(string sId , String name){
        Account ac = [select id, name from Account where id =: sId];
        ac.name = name;
        update ac;
    }
}