trigger BsHour on Case (before update) {

for(case c:trigger.new)
{
//BusinessHours bh = [SELECT Id ,Name FROM BusinessHours WHERE Name='Businesshours'];
if(c.Closed__c !=Null)
{

Long l = BusinessHours.Diff('01m90000000hdhv', c.Date__c, c.Closed__c);
Long M = l/(1000*60);
c.Calculation__c = M;
}

}
}