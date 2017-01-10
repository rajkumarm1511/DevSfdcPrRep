public class dataTableController {

    List<Account> Lstacc;

    public List<Account> getAccounts() {
        
        Lstacc = [select Id,Name,Owner.name from Account Limit 10 ];
        
        return Lstacc;
    }

}