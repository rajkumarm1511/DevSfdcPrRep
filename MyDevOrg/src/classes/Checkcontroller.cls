public class Checkcontroller {
    
    public String selectedIds {get; set;} 
    List<Account> lstAccounts {get; set;}
    
    public Checkcontroller(ApexPages.StandardController controller) {
        system.debug('constructor******************************');
    }
    
    public PageReference search()
    {      
        system.debug('Inside the Search Method***************'+selectedIds);
        PageReference ref;
        ref=new PageReference('/006/o');
        return null;
    }
    
    public list<account> getlstAccounts()
    {
        lstAccounts=[select id, name, Phone, BillingCountry from Account Limit 20];
        system.debug('Intial Search*****************'+lstAccounts.size());
        return lstAccounts;
        
    }
    
    
    
}