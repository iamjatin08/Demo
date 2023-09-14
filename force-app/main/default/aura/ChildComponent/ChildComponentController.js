({
	fireevt : function(cmp, evt, hpr) {
		alert('called...');
        var e = cmp.getEvent('myevent');
        e.setParams({"msg" : "see the magic.."});
        e.fire();
	}
})