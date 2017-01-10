trigger SendEmailToTaskCreator on Task (after update) {

   List<Messaging.SingleEmailMessage> mails= new List<Messaging.SingleEmailMessage>(); 
   List<Id> creatorIds = new List<Id>();
   EmailTemplate Template =  [SELECT Id,Name FROM EmailTemplate WHERE Name='TaskStatusChanged'];
   
   for(Task tsk : Trigger.New)
   {
        system.debug('Task Status :'+tsk.Status);
        if(tsk.Status == 'Completed')
        {
           creatorIds.add(tsk.CreatedById);
        } 
   }
   
   for(User targetId : [SELECT id,Email From User where Id IN :creatorIds])
   {
         system.debug('Email Address :'+targetId.Email );
         Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
/*         email.setToAddresses(new String[] {targetId.Email});
         email.setSubject('Test Subject');
         email.setPlainTextBody('Test Body');  */
         email.setSaveAsActivity(false);
         email.setTargetObjectId(targetId.Id); 
         email.setTemplateId(Template.Id);  
         mails.add(email);
   }
 
   if(mails.size() > 0)
   {  
      try
      {
         System.debug('Control Came Here');
         Messaging.sendEmail(mails);
      }
      catch(Exception e)
      {
         System.debug('Error Message :'+e);
      }  
   }                
         
}