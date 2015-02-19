trigger IsUpdateEnable on Opportunity (after insert, after update)
{
List<Account> Ilist = new List<Account>();
{
if(trigger.isupdate)
{
 for(Opportunity oppop:trigger.new){
 if(oppop.Is_Update__c !=false)
  Account Accu = new Account();
  
  update Ilist;
}
}
}
}