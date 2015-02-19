trigger Goal on afterupdate__c (after insert) {
List<contact> con = new List<contact>();

for (afterupdate__c aff:trigger.new)
{
con = [select id from Contact where id = :aff.Name_1__c];

if(aff.Test__c == 'Admin')
{
for(contact c:con)
{
c.Admin__c = TRUE;
}}
if(aff.Test__c=='Security')
{
for(contact cn:con)
{
cn.Security__c = TRUE;
}
}
}
update con;
}