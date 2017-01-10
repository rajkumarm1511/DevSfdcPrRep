public with sharing class actionPollerController {

    public Integer count{ get; set; }
      
    public PageReference pollermethod() {
           count = 0;
        count ++;
        return null;
    }


  
}