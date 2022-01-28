@RestResource(urlMapping='/Account4/*')
global with sharing class RestWebServ4 {
@HttpPost
global static String doPost(String name,String phone, String website) {
Account account = new Account();
account.Name = name;
account.phone = phone;
account.website = website;
insert account;
return account.Id;
}

}