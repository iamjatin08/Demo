public class insert_cc_Class {

    public String deptno { get; set; }

    public String job { get; set; }

    public integer salary { get; set; }

    public String ename { get; set; }

    public PageReference cancel() {
        return null;
    }


    public PageReference insertfun() {
        employee__c obj = new employee__c();
        obj.ename__c = ename;
        obj.salary__c = salary;
        obj.deptno__c = deptno;
        obj.job__c = job;
        insert obj;
        
        PageReference pr = new PageReference('https://herofincorp13-dev-ed.develop.my.salesforce.com/a03/o');
        return pr;
    }

}