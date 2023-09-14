public class AlarmClass implements Schedulable {
	//member methods
    public void execute(SchedulableContext sc){
        Employee__c obj = new Employee__c();
        obj.ename__c = 'JATIN ABC';
        Obj.deptno__c = '40';
        obj.job__c = 'Manager';
        obj.salary__c = 100000;
        insert obj;
    }
}