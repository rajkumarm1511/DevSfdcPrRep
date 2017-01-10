Public class Acconopp 
{
    Public Account CreateAccount(String n)
    {    
        Account a=new Account();
            a.name=n;
            insert a;
        Contact c=new Contact();
            c.Lastname='Rajkumar';
            c.AccountId=a.id;   //This is for associating above Accout with this Contact.
            insert c;
        Opportunity opp=new opportunity();
            opp.Name='Test';
            opp.AccountId=a.id;
            insert opp;
            return a;
            
      }
      
}