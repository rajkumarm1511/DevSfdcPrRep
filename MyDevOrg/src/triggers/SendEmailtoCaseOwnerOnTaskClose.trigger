trigger SendEmailtoCaseOwnerOnTaskClose on Task (after update) {
    
    Set<id> caseOwnerIds = new Set<id>();
    Set<id> taskId = new Set<id>();
    List<Case> lst;
    EmailTemplate emtemp = [select id,Name from EmailTemplate where Name= 'CaseTaskHasClosed'];
    List<Messaging.SingleEmailMessage> mail = new List<Messaging.SingleEmailMessage>();
    
    for(Task tk : Trigger.new)
    {
        if(tk.Status == 'Completed')
        {
            taskId.add(tk.id);
        }
        
    }
 	lst= [select id,CreatedById,(select id from tasks where id IN : taskId) from Case];
    
    for(Case c : lst)
    {
        caseOwnerIds.add(c.CreatedById);
    }
    
    for(User u : [select id,Email from user where id IN : caseOwnerIds])
    {
        System.debug('CaseOwners Email='+u.Email);
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setSaveAsActivity(false);
        email.setTargetObjectId(u.Id); 
        email.setTemplateId(emtemp.id);
        mail.add(email);        
    }
    
    if(mail.size() > 0)
    {
        Messaging.sendEmail(mail);
    }
}