public class NewAndExistingControllerDemo2 {
    
public Account account { get; private set; }

    public NewAndExistingControllerDemo2() {
    Id id = ApexPages.currentPage().getParameters().get('id');
    account = (id == null) ? new Account() :
    [SELECT Name, Phone, Industry FROM Account WHERE Id = :id];

     }
    
 public PageReference save(){

     try {
     upsert(account);
         } catch (System.DMLException e) {
           ApexPages.addMessages(e);
         
           return null;
 }
    PageReference redirectSuccess = new ApexPages.StandardController(Account).view();
    return (redirectSuccess);
}
}