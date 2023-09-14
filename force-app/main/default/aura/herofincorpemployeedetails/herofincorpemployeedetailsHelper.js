({
	helperMethod : function(component, event) {
        alert('I am in Helper Method..');
		var ename = component.get('v.empName');
        var eFname = component.get('v.empFname');
        var eadd = component.get('v.empAddress');
        var edept = component.get('v.empDept');
        var esal = component.get('v.empSalary');
       
        
        //how to call apex method from JS
        var action = component.get('c.insertEmployee');
        
        action.setParams({
            "ename" : ename,
            "efname" : eFname,
			"eadd" : eadd,
            "edept" : edept,
            "esal" : esal,
        });
        
        action.setCallback(this,function(a){
             var state = a.getState(); // get the response state
             if(state  == 'SUCCESS') alert('Record Inserted Successfully');
        });
        
        $A.enqueueAction(action);
	}
})