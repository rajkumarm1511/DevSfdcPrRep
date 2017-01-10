public class Simplefilter 
{
    public String name {get; set;}
    public Integer accnum {get; set;}
    public String soql;
    
    public void fetch()
    {
        soql='SELECT Name,AccountNumber from Account';
        if(name!='')
        {    
            soql+= 'AND Name LIKE \'%' + name + '%\'';
            list<account> act = Database.Query(soql);
            
        }
     /*   else if(accnum!='')
        {
            soql+= ' AND AccountNumber LIKE  \'%' + accnum + '%\'';
        }
        else
        {
           
        }*/
    }    
    
    public list<account> getaccounts()
    {
        list<account> lstact =[SELECT Name,AccountNumber from Account LIMIT 5];
        return lstact;
    }
    
    
    

}