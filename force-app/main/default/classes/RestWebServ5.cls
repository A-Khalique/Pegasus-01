@RestResource(urlMapping='/Account5/*')
global with sharing class RestWebServ5 {

@HttpDelete
global static void doDelete() {
RestRequest req = RestContext.request;
RestResponse res = RestContext.response;
String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
Account account = [SELECT Id FROM Account WHERE Id = :accountId];
delete account;
}
}