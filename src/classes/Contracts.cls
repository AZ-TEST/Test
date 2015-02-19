public class Contracts{

    
public List<contract> con {get;set;}

public Contracts(ApexPages.StandardController std)

{

con= new list<contract>();
con= [select id, name,ContractNumber,status,CustomerSignedTitle from contract];
}


}