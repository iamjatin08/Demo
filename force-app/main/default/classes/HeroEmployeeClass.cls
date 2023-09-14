public class HeroEmployeeClass {
	@auraEnabled
    public static void insertEmployee(string ename,string efname,string eadd, string edept, string esal){
        HeroEmployee__c hemp = new  HeroEmployee__c();
        hemp.employee_name__c = ename;
        hemp.employee_father_s_name__c = efname;
        hemp.employee_address__c = eadd;
        hemp.employee_dept_name__c = edept;
        hemp.employee_salary__c = Integer.valueof(esal);
        insert hemp;
    }
}