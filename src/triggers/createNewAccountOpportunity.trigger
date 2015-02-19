trigger createNewAccountOpportunity on Account (after insert,after update) {  
    List<Opportunity> listOppor = new List<Opportunity>();
if(trigger.isInsert)
{
    for (Account oAcc : trigger.new) {
        Opportunity oOpportunity = new Opportunity();
        oOpportunity.Name = oAcc.Name;
        oOpportunity.AccountId = oAcc.Id;
        oOpportunity.StageName = 'Needs Analysis';
        oOpportunity.CloseDate = System.today() + 30; 
        listOppor.add(oOpportunity);
    
  
    insert listOppor;
}
    }
     if (listOppor.isEmpty() == false) {
        Database.update(listOppor);
    }}