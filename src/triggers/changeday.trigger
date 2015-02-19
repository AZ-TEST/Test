trigger changeday on Case (before insert, before update) {

for(case c:trigger.new)
{

if(trigger.Isinsert)

{
c.Day__c = System.now().format('EEEE');
c.Date__c = system.now();

}

if(trigger.isupdate)
{
Datetime dt = DateTime.newInstance(Date.today(), Time.newInstance(8, 0, 0, 0));

if(c.Day__c == 'Saturday')
{
c.Date__c = dt.adddays(2);
}
else if (c.Day__c == 'Sunday')
{
c.Date__c = dt.adddays(1);
}
if(c.Day__c == 'Monday' ||  c.Day__c == 'Tuesday' ||  c.Day__c == 'Wednesday' ||  c.Day__c == 'Thursday' || c.Day__c == 'Friday')
{
c.Date__c = dt;
}
} }
}