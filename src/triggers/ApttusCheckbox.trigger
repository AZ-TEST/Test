trigger ApttusCheckbox on User (before insert) {

for (User UserLoop: trigger.new)
{
UserLoop.Apttus__c = true;
}

}