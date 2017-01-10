trigger AccountDelete on Account ( before delete ) 
{
	for(Account acc: Trigger.old)
    {
        acc.addError('You cannot delete the Account Records');
    }
    
}