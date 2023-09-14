@isTest
public class BankAccountClassTest {
    public static testmethod void main(){
        
        BankAccountClass cust1 = new BankAccountClass();
        cust1.getValues();
        cust1.setValues(101,'RAJ',10000);
        cust1.getValues();
        cust1.deposit(10000);
        cust1.balance();
        cust1.withdraw(3000);
        cust1.balance();
        cust1.getValues();
        BankAccountClass.getCount();
        
        
        BankAccountClass cust2 = new BankAccountClass();
        cust2.getValues();
        cust2.setValues(101,'RAJ',10000);
        cust2.getValues();
        cust2.deposit(10000);
        cust2.balance();
        cust2.withdraw(3000);
        cust2.balance();
        cust2.getValues();
        BankAccountClass.getCount();
        
        
        
        BankAccountClass cust3 = new BankAccountClass();
        cust3.getValues();
        cust3.setValues(101,'RAJ',10000);
        cust3.getValues();
        cust3.deposit(10000);
        cust3.balance();
        cust3.withdraw(3000);
        cust3.balance();
        cust3.getValues();
        BankAccountClass.getCount();
        
    }
}