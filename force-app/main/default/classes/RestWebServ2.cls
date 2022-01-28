@RestResource(urlMapping='/Account1/*')
global with sharing class RestWebServ2{
@HttpGet
global static List<Account> doGet() {
List<Account> result = [SELECT Id, Name, Phone, Website FROM Account];
return result;
}
}