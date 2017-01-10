trigger AccafterInsertUpdate on Account (after insert, after update) {
    list<account> lstacct=[select id,Rating,Ownership from account where id IN : Trigger.newMap.keySet()];
    list<account> liacc=new list<account>();
    for(Account acc: lstacct)
    {
        if(acc.Rating!= Trigger.oldMap.get(acc.id).Rating)
        {
            if(acc.Rating== 'Warm')
            {
                acc.Ownership='Private';
                liacc.add(acc);
            }
            else
            {
                acc.Ownership='Other';
                liacc.add(acc);
            }
        }
    
    if(lstacct.size()> 0)
        update liacc;
    }
}