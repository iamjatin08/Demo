@isTest
public class ClassList {
    public static testmethod void main(){
        List<integer> obj = new List<integer>();
        obj.add(45);
        obj.add(456);
        obj.add(-9);
        obj.add(298);
        obj.add(953);
        system.debug(obj);
        obj.add(0,1000);
        system.debug(obj);
        obj.set(0,100);
        system.debug(obj);
        system.debug('the value in the 0th location ' + obj.get(0));
       	List<integer> obj2 = new List<integer>();
        obj2 = obj.clone();
        system.debug(obj2);
        obj.sort();
        system.debug(obj);
		system.debug('the value in the 0th location ' + obj.get(0));
        system.debug('the number of elements in the list is ' + obj.size());
        boolean flag;
        flag = obj2.Equals(obj);
        system.debug('the flag value is ' + flag);
        system.debug('the index of 100 is ' + obj.indexOf(100));
        boolean flag1;
        flag1 = obj.contains(100);
        system.debug('the flag1 value is ' + flag1);
        obj.remove(3);
        system.debug(obj);
        obj.clear();
        system.debug(obj);
        boolean flag3;
        flag3 = obj.isEmpty();
        system.debug('the flag3 is empty' + flag3 );
        
    }
}