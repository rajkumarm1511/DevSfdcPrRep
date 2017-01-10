global class SimpleBatchJob implements Database.Batchable<sObject>
{
	global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'Select Id,Department from Contact';
        return Database.getQueryLocator(query);        
    }
    global void execute (Database.BatchableContext BC, list<Contact> la)
    {
        for ( Contact a: la)
        {
            a.Department= a.Department +'updated';                  
        }
        	update la;
   }
    global void finish(Database.BatchableContext BC)	
    {
        
    }
}

/* Go to Anonymous block and run the below code then the Batch job will execute,
   normally it takes time to finish the job for single record also
   SimpleBatchJob sb= new SimpleBatchJob();
   Database.executeBatch(sb);

   see the status at Setup---> Monitor---> Jobs----> */