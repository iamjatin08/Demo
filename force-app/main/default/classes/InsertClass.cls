@isTest
public class InsertClass {
    public static testmethod void main(){
        List<employee__c> obj = new List<employee__c>();
        	
        	obj = [select salary__c from employee__c];
        
        for(Employee__c er : obj){
            er.salary__c += 10000;
        }
        update obj;
            
    }
}