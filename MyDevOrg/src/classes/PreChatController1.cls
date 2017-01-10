global class PreChatController1
{

    @remoteAction
    global static sobject findLeadOrContactByEmail(string fname, string lname, string email, string caseNumber)
    {
                
                Case c = new Case();
               // now look for an associated contact with the same email
                Contact cnt = [SELECT Id FROM Contact WHERE Email = :email LIMIT 1];
                if (cnt != null) 
                c.ContactId = cnt.Id;
            //   c.contactEmail=email;
              //c.Subject = name;
                c.Origin= 'Chat';
              //  c.FirstName = fname;
               // c.LastName = lname;
                           
                  insert c;
                  system.debug('============='+c);
                  return c;
           
    }
}