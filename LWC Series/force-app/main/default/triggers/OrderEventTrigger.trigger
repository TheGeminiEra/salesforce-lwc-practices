trigger OrderEventTrigger on Order_Event__e (after insert) {
    // List to hold all listTasks to be created.
    List<Task> listTasks = new List<Task>();
   // Get User Id who is active to assign the Tasks
    User ObjUser = [Select Id From User Where IsActive = true LIMIT 1];

    // Iterate through each notification.
    for (Order_Event__e event : Trigger.New) {
        if (event.Has_Shipped__c == true) {
            // Create Task to dispatch new team.
            Task obj = new Task();
            obj.Priority = 'Medium';
            obj.Status = 'New';
            obj.Subject = 'Follow up on shipped order ' + event.Order_Number__c;
            obj.OwnerId = ObjUser.Id;
            listTasks.add(obj);
        }
   }
    // Insert all Task corresponding to events received.
    if(!listTasks.isEmpty()) {
        insert listTasks;
    }
    
}