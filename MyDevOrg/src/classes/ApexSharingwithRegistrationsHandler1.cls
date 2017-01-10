public class ApexSharingwithRegistrationsHandler1 {
    
    public string groupId{get;set;}
    
    public boolean apexSharingReg(Id recordId)
    {
    
        //Accessing CustomSettings 
        ApexSharingObjects__c aps = ApexSharingObjects__c.getValues('UserOrGroupId');
        groupId = aps.UserOrGroupId__c; 
              
        //Creating object for Share object of Registrations
        Registrations__Share reg = new Registrations__Share();
        reg.ParentId = recordId;
        reg.UserOrGroupId = groupId;
        reg.AccessLevel = 'Edit';
        reg.Rowcause = Schema.Registrations__Share.RowCause.Manual;
        
        Database.SaveResult sr= Database.insert(reg,false);
        
        if(sr.isSuccess())
        {
            return true;
        } 
        else{
            Database.Error err=sr.getErrors()[0];
            if(err.getStatusCode() == StatusCode.FIELD_FILTER_VALIDATION_EXCEPTION  &&  
                  err.getMessage().contains('AccessLevel')){
            // Indicates success.
            return true;
            }
            else{
            // Indicates failure.
            return false;
            }
        }
    }
}