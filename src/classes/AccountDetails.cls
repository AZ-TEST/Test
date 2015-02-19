public class AccountDetails
{

public List<Account> ALL {get;set;}
public List<wrapperClass> wrp{get;set;}
public List<Contact> con{get;set;}
public string s{get;set;}
public string datename{get;set;}
public id idvalue{get;set;}
public boolean b{get;set;}
public AccountDetails()
{
ALL = new List<Account>();
ALL =[select ID, Name from Account];
wrp = new List<wrapperClass>();
for(Account ac:ALL)
{
wrapperClass wp = new wrapperClass();
wp.ASD = ac;
wp.c = false;
wrp.add(wp);
}
}

public void Check()
{
b=false;

}

public class wrapperClass

{
public Account ASD{get;set;}
public boolean c{get;set;}
}

public void saving()
{
All.clear();
for(wrapperclass acc:wrp){

ALL.add(acc.ASD);
}
update ALL;
}

public void view()
{

con = new List<Contact>();
con = [select id,name,phone from contact where accountid =:idvalue];

system.debug('@@@@@@@@@@@@' +idvalue);

}



}