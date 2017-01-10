Public class MyTask11
{
    public Opportunity opp;
    
    public MyTask11()
    {
        opp=[select id,name,Probability,CloseDate,Amount,LeadSource,CurrentGenerators__c,StageName,OrderNumber__c,TrackingNumber__c,MainCompetitors__c
          from Opportunity where id=:ApexPages.currentPage().getParameters().get('Id')];
    }      
        
    public Opportunity getOpportunity()
    {    
        return opp;
    }
    public PageReference UpdateMethiod()
    {
        delete opp;
        PageReference pg=new ApexPages.StandardController(opp).view();
        return pg;
    }
    
}