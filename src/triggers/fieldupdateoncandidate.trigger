trigger fieldupdateoncandidate on Candidate__c (before insert) {


for(Candidate__c can:trigger.new)
{

can.Mobile__c = '9894166896';
}
}