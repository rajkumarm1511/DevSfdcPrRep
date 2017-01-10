public class Savedelete
{
  public Account acc;
    
  public Account getAccount()
    {
        if(acc == null)    
            acc = new Account();
    else
        acc=[select 

id,name,AccountNumber,Site,AccountSource,Phone,Website,NumberofLocations__c,Industry from Account where id=:ApexPages.currentPage().getParameters().get('Id')];
            
        return acc;
  
    }
    
    Public PageReference save()
    {
        insert acc;
        PageReference pg=new ApexPages.StandardController(acc).view();
        pg.setRedirect(true);
        return pg;
    }
    
   
     Public PageReference cancel()
     {
         return null;
     }
     
     Public PageReference ssdelete()
     {
        delete acc;
        PageReference pg=new ApexPages.StandardController(acc).view();
        return pg;  
     }
}