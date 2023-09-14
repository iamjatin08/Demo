Global class MerchandiseSoapExpose {
    webservice static list<merchandise__c> getRecord(){
        return [select id, name from merchandise__c];
    }
}