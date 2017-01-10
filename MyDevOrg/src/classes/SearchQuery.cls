public class SearchQuery {
    public String nameQuery {get; set;}
    public List<Account> accounts {get; set;}
    
    public PageReference executeSearch()
    {
        String queryStr='%' +nameQuery+ '%';
        accounts = [select Id,name,BillingStreet from Account where name like :queryStr];
        return null;
    }
    public SearchQuery()
    {
        // if query appears in URL, execute it
        String urlQuery=ApexPages.currentPage().getParameters().get('query');
        if ( (null!=urlQuery) && (0!=urlQuery.length()) )
        {
            nameQuery=urlQuery;
            executeSearch();
        }
    }
    
}