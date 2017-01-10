public class MyTask3
{
    public Account acc;
    
   public Account getAccount()
    {
    if(acc == null)    
     acc = new Account();
        return acc;
  
    }
    
    Public PageReference save()
    {
        insert acc;
        PageReference pg=new ApexPages.StandardController(acc).view();
        pg.setRedirect(true);
        return pg;
        }
     
}