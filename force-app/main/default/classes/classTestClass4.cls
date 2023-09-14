@isTest
public class classTestClass4 {
    public static testmethod void main(){
        List<employee__c> obj = new List<employee__c>();
        obj = [select name, ename__c, deptno__c, salary__c from employee__c where deptno__c like '10' limit 5];
        integer count = 0;
        for(employee__c er : obj){
            system.debug('Student ' + count++ + ' DETAISL : ' + er);
        }
        
    }
}