@isTest
public class ListClass {
    public static testmethod void main(){
        List<integer> obj = new List<integer>();
        obj.add(45);
        obj.add(456);
        obj.add(-9);
        obj.add(298);
        obj.add(953);
        
        system.debug(obj);
        
        for(integer i : obj) 
            system.debug(i);
        
        system.debug(obj[3]);
        
    }
}