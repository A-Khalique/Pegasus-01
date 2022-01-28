public with sharing class DetailButtonController {
    
 private ApexPages.StandardController standardcontroller;
    public string greeting{get; set;}
    
    public DetailButtonController(ApexPages.StandardController standardcontroller)
    {
    this.standardcontroller=standardcontroller;
    }
    
    public PageReference doSomething()
    {
        id recordId=standardcontroller.getId();
        contact record=(contact) standardcontroller.getRecord();
        
        greeting='Hello '+recordId;
        return null;
    }

}