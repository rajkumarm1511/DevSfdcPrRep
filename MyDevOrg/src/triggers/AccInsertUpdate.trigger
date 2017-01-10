trigger AccInsertUpdate on Account (before insert,before update)
{
    for(Account a: trigger.new)
    {
        if(a.AccountNumber ==null || a.Site ==null)
        {
            a.addError(' Please enter the values in Account Number and Site fields ');
        }
        
    }
}