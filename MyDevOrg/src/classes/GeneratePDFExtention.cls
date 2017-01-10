public with sharing class GeneratePDFExtention {
    public List<Account> lstacc {get; set;}
    public Id accId {get; set;}  
    
    public GeneratePDFExtention(ApexPages.StandardController con)
    {
        accId = Apexpages.currentPage().getparameters().get('Id');
        lstacc= [select id,Name,AccountNumber,Rating,Type,(Select Name,Amount,StageName,CloseDate from Opportunities) from Account LIMIT 15];
        //Id=: accId
    }    
}