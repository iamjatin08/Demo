@isTest
public class UpsertClass {
    public static testmethod void main(){
        List<employee__c> obj = new List<employee__c>();
        	
        obj = [select salary__c from employee__c];
        
        for(Employee__C er : obj) 
            er.salary__c += 10000;
        
        Employee__c obj1 = new Employee__c();
        obj1.ename__c = 'AMAN';
        obj1.salary__c = 10234;
        obj1.deptno__c = '10';
        
        obj.add(obj1);
        
        upsert obj;
            
    }
}