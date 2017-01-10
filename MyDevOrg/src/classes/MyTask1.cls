public class MyTask1
{
    public Opportunity opp;
    
    ApexPages.standardController m_sc = null;

  public MyTask1(ApexPages.standardController sc)
  {
    m_sc = sc;
  }
     public PageReference Cancel()
  {
    return m_sc.cancel();
  }
    public Opportunity getOpportunity()
    {
    if(opp == null)    
     opp = new Opportunity();
        return opp;
  
    }
    

 
    
    Public PageReference saveMethod()
    {
        insert opp;
        PageReference pg=new ApexPages.StandardController(opp).view();
        pg.setRedirect(true);
        return pg;
        }
       
}