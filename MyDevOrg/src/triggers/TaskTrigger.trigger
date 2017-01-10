trigger TaskTrigger on Task (before insert, before update)
{
    for(Task t: trigger.new)
    {
        if(t.status == 'completed')
            t.Completion_Date__c = System.now();
        else
        {
            t.Completion_Date__c = null;
        }
            
            
    }
    
}