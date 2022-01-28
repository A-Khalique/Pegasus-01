public with sharing class Pagination {
    
    private Integer totalRec=0;
    private Integer offsetSize=0;
    private Integer limitSize=5;
    
    public Pagination()
    {
    totalRec=[select count() from account];
    }
    
    public List<account> getacclist()
    {
        List<account> acc= Database.Query('select Name,website,AnnualRevenue,description, Type From account Limit '+limitSize+' OFFSET '+offsetSize+'');
        return acc;                                  
    }
     
          public void previous(){
              
              offsetSize=offsetSize-limitSize;
                                              
                                          }     
                                          
          public void next(){
              
              offsetSize=offsetSize+limitSize;
                                              
                                          }     
    
  }