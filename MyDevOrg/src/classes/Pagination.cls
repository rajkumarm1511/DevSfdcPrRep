public class Pagination 
{
    private integer totalRecs = 0;
    private integer OffsetSize = 0;
    private integer LimitSize = 10;
    
    public Pagination()
    {
        totalRecs=[select count() from Account];
    }
    
    public list<account> getAcclist() 
    {
        list<account> acc=Database.Query('Select Name,Website,Type from Account LIMIT:LimitSize OFFSET:OffsetSize');        
        System.debug('Values are'+acc);        
        return acc;
    }
    public void FirstPage()
    {
        OffsetSize=0;
    }
    public void previous()
    {
        OffsetSize = OffsetSize - LimitSize;
    }
    public void next()
    {
        OffsetSize = OffsetSize + LimitSize;
    }
    public void last()
    {
        OffsetSize = totalrecs - math.mod(totalRecs,LimitSize);
    }
    public boolean getprev()
    {
        if(OffsetSize == 0)
        return true;
    else
        return false;
    }
    public boolean getnxt()
    {
        if((OffsetSize + LimitSize) > totalRecs)
        return true;
    else
        return false;
    }    
  
}