public class BatchApex implements database.Batchable<employee__c>{
	//1) start
    public Iterable<employee__c> start(database.BatchableContext bc){
        return [select salary__c from employee__c];
    }
    
    //2) execute
    public void execute(database.BatchableContext bc, List<employee__c> obj){
        for(employee__c  er : obj)
            er.salary__c += 11000;
        update obj;
    }
    
    //3) finish
    public void finish(database.BatchableContext bc){
        
    }
}