public with sharing class accListLwc1 {
   
    @AuraEnabled(cacheable=true)
    public static List<Account> queryAccByEmpNum(Integer numberOfEmployees) {

    return [
        SELECT Name
        FROM Account
        WHERE NumberOfEmployees >= :numberOfEmployees
    ];       
       
    }
}
