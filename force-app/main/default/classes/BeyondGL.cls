public class BeyondGL implements database.Batchable<employee__c> , database.stateful{
    string name = 'Kanishk';
	//1) start
    public Iterable<employee__c> start(database.BatchableContext bc){
        system.debug('i am in start method ' + name);
        name = 'Guroor';
        return [select salary__c from employee__c];
    }
    
    //2) execute
    public void execute(database.BatchableContext bc, List<employee__c> obj){
        system.debug('i am in start method ' + name);
        name = 'ketan';
        for(employee__c  er : obj)
            er.salary__c += 11000;
        update obj;
    }
    
    //3) finish
    public void finish(database.BatchableContext bc){
        system.debug('i am in start method ' + name);
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        
        String[] toAddress = new String[]{'jatinpawar1920@gmail.com' , 'pawarjatinlakshay2000@gmail.com'};
        
        mail.setToAddresses(toAddress);
        mail.setSubject('Batch Apex Job Completed');
        mail.setplainTextBody('The batch job that you are started that is completed');
        messaging.sendEmail(new messaging.SingleEmailMessage[]{mail});
    }
    
}