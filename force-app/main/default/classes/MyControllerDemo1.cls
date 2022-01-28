public class MyControllerDemo1 {
   
private final Account account;
public MyControllerDemo1() {
account = [SELECT id, Name, Site FROM Account
WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
}
public Account getAccount() {
return account;
}
public PageReference save() {
update account;
return null;
}


}