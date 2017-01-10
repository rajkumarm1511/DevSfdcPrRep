public class SelectListCotroller {
    
    public String selectedService{get; set;}

    public SelectListCotroller(ApexPages.StandardController controller) {
    
        System.debug('Ths is Constructor***********************************  ');
    }
    
    public List<selectOption> getServices()
    {
        List<selectOption> options=new List<selectOption>();
        options.add(new selectOption('', '- None -'));
        for(Service__c s: [SELECT Id, Name FROM Service__c])
        {
            options.add(new selectOption(s.id,s.name));
        
        }
    return Options;
    }

}