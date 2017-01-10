global class InboundEmailAccountCreation implements Messaging.InboundEmailHandler {
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email,Messaging.InboundEnvelope envelope)
    {
        Account a ;
        Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();
                
        try {
        // Look for account whose name is the subject and create it if necessary
        if([select count() from Account where Name =:email.subject] == 0)
        {
            a = new Account();
            a.Name = email.Subject;
            a.Description = email.plainTextBody;
            insert a;
            //System.debug('Account is created ------------------------------');
        }
        else{
           a=[Select Id from Account where Name =:email.Subject];
        }
        
       // Save attachments to associated Account,that may be Text or Binary Attachment
        for(Messaging.InboundEmail.TextAttachment textAtt : email.textAttachments)
        {
            Attachment at = new Attachment();
            at.Name = textAtt.fileName;
            at.Body = Blob.ValueOf(textAtt.body);
            at.ParentId = a.Id;
            insert at;
           //System.debug('Text Attachments record is inserted------------------');
        }
        for(Messaging.InboundEmail.BinaryAttachment binaryAtt : email.binaryAttachments)
        {
            Attachment at = new Attachment();
            at.Name = binaryAtt.fileName;
            at.Body = binaryAtt.body;
            at.ParentId = a.Id;
            insert at;
           //System.debug('Binary Attachments record is inserted---------------');
        }
        
        //Here we explicitly indicate success or failure by setting the success field of our InboundEmailResult object.
          result.success = true;
        }
        catch (Exception e) 
        {
           result.success = false;
          //result.message = 'Sorry, Its failed.';
        }
        return result;
    }
}