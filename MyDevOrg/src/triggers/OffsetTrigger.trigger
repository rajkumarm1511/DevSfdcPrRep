trigger OffsetTrigger on Registrations__c (before insert , before update)
{
 try{
            
 for(Registrations__c c : Trigger.new)
  {         
            
            // Datetime myDate = datetime.newInstance(2008, 2, 5, 8, 30, 12);
            Time tm = c.CreatedDate.timeGmt();
            Time tm1 = c.CreatedDate.time();
            System.debug('Time'+tm);
            System.debug('Time1---'+tm1);  
            integer t1 = tm.hour();
            integer t2 = tm1.hour();
            integer t3 = t1-t2;
            System.debug('Diff-------'+t3); 
            c.Offset_Tg__c= t3;       
        }

}
catch(NullPointerException npe) {
    System.debug('The following exception has occurred: ' + npe.getMessage());
}
}