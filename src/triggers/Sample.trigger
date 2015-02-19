trigger Sample on Position__c (before insert) {
    
    for(Position__c G:trigger.new)
    {
        G.Travel_Required__c = true;
    }
    

}