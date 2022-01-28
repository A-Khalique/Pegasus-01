@RestResource(urlMapping='/Account3/*')
global with sharing class RestWebServ3 {

@HttpPut
global static String doput(String name) {
RestRequest req = RestContext.request;
String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
Account account = new Account(Id=accountId);
account.Name = name;
update account;
return account.Id;
}
}