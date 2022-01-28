Public with sharing class SOSLController{
Public List<Opportunity> optyList {get;set;}
Public List<contact> conList {get;set; }
Public List<account> accList {get;set;}

    Public String searchStr{get;set;}
    Public SOSLController(){
}
Public void soslDemo_method() {
optyList = New List<Opportunity>();
conlist = New List<contact>();
acclist = New List<account>();
if(searchstr.length() > 1){
String searchStr1 = '*'+searchStr+'*';
String searchQuery = 'FIND \'' + searchStr1 + '\' IN ALL FIELDS RETURNING Account (Id,Name,type),Contact(name,email),Opportunity(name,StageName)';
List<List <sObject>> searchList = search.query(searchQuery);
accList = ((List<Account>) searchList[0]);
conlist = ((List<contact>) searchList[1]);
optyList = ((List<Opportunity>) searchList[2]);
if(acclist.size() == 0 && conList.size() == 0 && optylist.size() == 0)
{
apexPages.addmessage(new apexpages.message (apexpages.severity.Error,'Sorry, no results returned with matching string..'));
return;
}
}
else
{
apexPages.addmessage(new apexpages.Message(apexpages.Severity.ERROR,'Please Enter Atleast Two Characters....'));
 return;
}
}
}