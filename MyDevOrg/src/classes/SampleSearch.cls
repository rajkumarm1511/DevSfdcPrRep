public class SampleSearch {
    public String caseStatus {get; set;}
    public String priority {get; set;}
    public List<Case> listCases {get; set;}
    
    public PageReference search()
    {
        String caseStQr = '%' +caseStatus+ '%';
        String priorityQr = '%' +priority+ '%';
        listCases = [select CaseNumber,Status,Priority from Case where Status like :caseStQr AND Priority like :priorityQr];
        return null;
    }
}