@isTest
public class SendEmailtoCaseOwnerOnTaskCloseTes {
	
	static testmethod void testCaseEmail()
    {
    	Task tk = new Task();
        	tk.Subject='Donni';
            tk.Status='In Progress';
            tk.ActivityDate=Date.Today();
            tk.Priority='Normal';
        insert tk;
        
        Case c = new Case();
        	c.Origin = 'Email';
        	c.Subject = 'New Case';
        	c.Description = 'This is the Case email test class';
        	//c.Task.WhatId =tk.id;
        insert c;
        
       //list<Case> lst= [select id,CreatedById,(select id from tasks where id IN : taskId) from Case];
        
        Task tks= [select id,Status from Task where id =:tk.id];
        	tks.Status ='Completed';
        update tks;
        
    }
}