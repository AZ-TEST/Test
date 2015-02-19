public class leads{

    
public List<lead> con {get;set;}

public leads(ApexPages.StandardController std)

{

con= new list<lead>();
con= [select id, lastname,company from lead];
}


}