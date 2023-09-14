@isTest
public class DeveloperTestClassTest {
    public static testmethod void main(){
        
        integer num1 = 10;
        integer num2 = 0;
        integer res;
        try{
            res = num1 / num2;
        }
        catch(exception e){
            system.debug('YOU CANNOT DIVIDE A NUMBER BY ZERO');
        }
    }
}