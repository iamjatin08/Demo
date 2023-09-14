public class CustomSettingDemo {
    public void getCustomSettingDetails(){
        My_Custom_Settings__c ms = My_Custom_Settings__c.getInstance('mydataset');
        system.debug(ms);
        system.debug('Flag value is ' + ms.flag__c);
        ms.flag__c = true;
        update ms;
        if(ms.flag__c == true)
            system.debug('Please Execute...');
        else 
            system.debug('Please Dont Execute...');
        
    }
}