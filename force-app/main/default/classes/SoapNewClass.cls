global class SoapNewClass {
    webservice static Account getAccount(string actId){
        Account act = [select id, name from account where id=: actId];
        return act;
    }
}