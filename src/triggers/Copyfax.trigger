//whenever an Account gets updated then Fax field of the account should be copied in the fax field of all the contacts those have reference of this account.

trigger Copyfax on Account (after update) 

{

    for(account a:trigger.new)
    {
    List<Contact> con = [select fax,Phone from contact where AccountId = :a.id];
    for(Contact c:con)
    {
    c.fax = a.fax;
    c.Phone=a.Phone;
    }
    update con;
    }
}