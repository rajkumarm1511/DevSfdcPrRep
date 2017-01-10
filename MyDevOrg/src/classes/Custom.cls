public class Custom {

    public String accName{get; set;}
    public String accAddress{get; set;}
    public Boolean chkbox{get; set;}
    
    public Custom()
    {
        chkbox=false;    
        accAddress='300,Asinfsd,Hyderbad';
        system.debug('Checkbox constructor------------------'+chkbox);
    }
  public PageReference Go()
    {
        system.debug('Name ------>'+accName);
        system.debug('Address ------>'+accAddress);     
        system.debug('CheckBox ------>'+chkbox);    
        return null;
    }
    

}