public class A {
    
	@future
    public static void f1(){
        system.debug('Calling from class A....');
        // B.f2();
        System.enqueueJob(new B());
        
    }
}