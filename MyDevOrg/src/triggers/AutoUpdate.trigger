trigger AutoUpdate on Account (before insert,before update) {
    for(Account a:trigger.new)
    {
        if(a.name.toLowerCase().contains('test'))
        {
            a.site='Testing site';
        }
        else
        {
            a.site='Real site';
        }
                
    }
}