public with sharing class CotrollerPassParamNew{
    
    public Account account{get;set;}
    
    public String getName(){
        return 'ControllerNew';
    }
    
    public CotrollerPassParamNew(){
        
        if(account==null)
            account= [select name from Account where id='0015j00000CtbMKAAZ'];
    }
    
    public PageReference save(){
        update account;
        
        PageReference page=Page.MySecondPage;
        page.setRedirect(true);
        page.getParameters().put('id',account.id);
        
        return page;
    }
    
    public PageReference GoToNewPage(){
        
         PageReference page=Page.MySecondPage;
        page.setRedirect(true);
        page.getParameters().put('id',account.id);
        
        return page;
        
    }

}