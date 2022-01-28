@RestResource(urlMapping='/Account/*')
global with sharing class RestWebServ {

@HttpGet
global static Account doGet() {
RestRequest req = RestContext.request;
RestResponse res = RestContext.response;
String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);    
Account result = [SELECT Id, Name, Website FROM Account WHERE Id= :accountId];
return result;
}
}