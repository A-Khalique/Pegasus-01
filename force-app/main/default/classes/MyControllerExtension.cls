public class MyControllerExtension {
    private final Account acc;
    
    public MyControllerExtension(ApexPages.StandardController stdCtrl)
    {
        this.acc=(Account)stdCtrl.getRecord();
        
    }
    
    public String getGreeting()
    {
        return 'Hello' + acc.name + '('+acc.id+')';
    }

}