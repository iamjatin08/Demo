@isTest
public class SetClass {
    public static testmethod void main(){
        set<integer> obj = new set<integer>();
        obj.add(10);
        obj.add(25);
        obj.add(36);
        obj.add(-80);
        obj.add(25);
        obj.add(467);
        
        System.debug(obj);
        Set<integer> mySet = new Set<integer>{1,3};
        list<integer> myList = new List<integer>{1,10};
            
            boolean res1 = mySet.removeAll(myList);
        	system.debug(myList);
        	system.debug(mySet);
        	system.debug('the result is ' + res1);
        
        Set<integer> mySet1 = new Set<integer>{1,3,77};
        		system.debug(mySet1);
        
        set<integer> mySet2 = new set<integer>{1,3,7};
        boolean result = mySet1.retainAll(myset2);
        system.debug(mySet1);
        system.debug(mySet2);
        system.debug(result);
        
    }
}