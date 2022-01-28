public with sharing class MyPageControllerPRef {
    
    public PageReference saveMethod()
    {
       PageReference pagref = new PageReference('http://www.google.com');
        return pagref;
    }

}