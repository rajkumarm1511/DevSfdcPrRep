trigger DuplicateRecord on Service__c (before insert,before update) 
{
    for(Service__c s : Trigger.new)
    {
    	list<Service__c> lstact=[select id from Service__c where Name=:s.Name];
        if(lstact.size()>0)
        {
            s.Name.addError('You cannot create Duplicate Service');
        }
    }
}