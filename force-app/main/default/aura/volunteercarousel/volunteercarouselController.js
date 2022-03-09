({
    myAction : function(component, event, helper) {
    },
    handleClick : function (component, event, helper) {
        if (component.get("v.holder") == false) {
            component.set("v.holder", true);
        } else {
            component.set("v.holder", false);
        }
    }
})