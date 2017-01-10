@isTest
public class SendEmailToTaskCreator {
  
    static testmethod void testTask()
    {
                
      
        Task t = new Task();        
            //t.CreatedById = usr.id;
            t.Subject='Donni';
            t.Status='In Progress';
             t.ActivityDate=Date.Today();
            t.Priority='Normal';
        insert t;
        
        Task tk = [SELECT status FROM Task WHERE id=:t.id];
        tk.status = 'Completed';
        update tk; 
        
                     
    }   
}