trigger SiteURL on Account (before insert) 
{
for (Account URLSite:trigger.new)
{

URLSite.Site__c = 'www.flextronics.com';
}

}