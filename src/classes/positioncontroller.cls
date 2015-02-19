public class positioncontroller{

    

    
public List<position__c> all {get;set;}

public positioncontroller(ApexPages.StandardController std)

{

all = new list<position__c>();
all = [select id, name,Job_Level__c,Max_Pay__c,Min_Pay__c,Functional_Area__c from position__c];
}


}