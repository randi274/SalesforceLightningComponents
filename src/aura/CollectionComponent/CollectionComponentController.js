({
    getAccounts: function(cmp){
        var action = cmp.get("c.getOpps");
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                var test = response.getReturnValue();   
                //console.log(test);
                cmp.set("v.OppList", test);
            }
        });
        $A.enqueueAction(action);
    }
})