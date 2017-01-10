public class InputComponentController {
    public String CustomerID{get; set;}
    
    public PageReference Save()
    {
         if(Pattern.matches('^[a-zA-Z]{1,3}[0-9]{1,3}[a-zA-Z0-9]{1,3}$', CustomerID))   
         {
             ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.CONFIRM,'You have entered correct Value');
             ApexPages.addMessage(myMsg);
          }   
         else{
             ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL,'Error: You have enetered wrong value.CustomerID should be in the format like First 3 chars should be from A-Z or a-z. Next 3 chars should be from 0-9. Next 3 chars can be alphanumeric');
             ApexPages.addMessage(myMsg);  
            // InputComponentController.CustomerID.addError('Required field.');
         }
         return null;
    }
}