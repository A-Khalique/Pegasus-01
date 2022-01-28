public class OpportunityListConDemo3 {

 public ApexPages.StandardSetController setCon {
get {
if(setCon == null) {
setCon = new ApexPages.StandardSetController(Database.getQueryLocator(
[SELECT Name,closeDate FROM Opportunity]));
}
    return setCon;
}
set;
}

public List<Opportunity> getOpportunities() {
return (List<Opportunity>) setCon.getRecords();
}
}