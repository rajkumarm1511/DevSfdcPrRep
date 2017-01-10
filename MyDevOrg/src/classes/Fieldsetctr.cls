public class Fieldsetctr 
{
    private final Account acct{get;set;}
    public String Accsite{get;set;}
    
    public Fieldsetctr(ApexPages.StandardController controller) 
    {
       
    }
    public List<selectOption> getaccts() 
    {
        List<selectOption> options = new List<selectOption>(); 

        options.add(new selectOption('', '- None -')); 
    
        for (Account account : [SELECT Id, Name FROM Account])
        { 
            options.add(new selectOption(account.id, account.Name)); 

        }
        return options;     
            }
  public void getName()
  {
      Map<String, Schema.SObjectField> M = Schema.SObjectType.Account.fields.getMap();
      List<String> allFieldNames = new List<String>();
      allFieldNames.addAll(m.keyset());
      System.debug(allFieldNames);

      for(String fieldName : allFieldNames)
      {     
          if(fieldname == 'AccountNumber')
            {
              System.debug('**************'+fieldname);
              Accsite=fieldname;
            }
          else
          {
            System.debug(fieldname);
          }
          
}
}
}