public class TestingJavascript {
    public String accname{get;set;}
    public String accAdress{get;set;}
    public Boolean chkBox{get;set;}
    
    Public TestingJavascript()
    {
        chkBox=false;
        accAdress='200,Haveli,AP';
        System.debug('This is controstuvtor'+chkBox);
    }
    Public PageReference Go()
    {
        System.debug('AccName-------------'+accname);
        System.debug('Address-----------'+accAdress);
        System.debug('CheckBox-------------'+chkBox);
        return null;
    }    
        

}