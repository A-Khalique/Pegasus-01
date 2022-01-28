public with sharing class accListLwc {
    
    @AuraEnabled(cacheable=true)
    public static List<Contact> queryRelatedContact(String accId)  {

    return [
        SELECT Id,AccountId,FirstName,LastName,Email,phone,Account.Name
        FROM Contact
        WHERE AccountId = :accId
    ];       
       
    }
}
