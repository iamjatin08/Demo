@isTest
public class DeleteClass {
    public static testmethod void main(){
        List<employee__c> obj = new List<employee__c>();
        	
        obj = [select salary__c from employee__c];
        
        delete obj;
            
    }
}