trigger fffff on Contact ( before insert, before update) {

List<Account> acc = new List<Account>();
List<account> abcd=new list<account>();
set<string> uid = new set<string>();

for(contact c : trigger.new)
{
uid.add(c.accountid);

}
acc = [select id,trigger_old__c from Account where id In:uid];
for(contact c : trigger.new)
{

acc[0].trigger_old__c = c.trigger_old__c;

system.debug('------------' +uid);
}
abcd.add(acc[0]);
update abcd;   
}