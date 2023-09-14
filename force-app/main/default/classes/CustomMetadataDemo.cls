public class CustomMetadataDemo {
    public void getCustomMetadataDetails(){
        	my_custom_metadata__mdt mdata = 	my_custom_metadata__mdt.getInstance('my_metadt');
        	system.debug(mdata);
        	system.debug('value of flag in custom metadata is ' + mdata.flag__c);
        
        	if(mdata.flag__c == true)
           		system.debug('Please Execute...');
            else 
                system.debug('Please Dont Execute...');
        	
    }
}