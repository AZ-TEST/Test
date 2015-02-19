<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Populate_the_WR</fullName>
        <field>Relevancy__c</field>
        <formula>If(CONTAINS(Title,&quot;CEO&quot;),20,0)+

If(CONTAINS(Title,&quot;COO&quot;),20,0)+

If(CONTAINS(Title,&quot;CTO&quot;),20,0)+

If(CONTAINS(Title,&quot;VP&quot;),15,0)+

If(CONTAINS(Title,&quot;President&quot;),15,0)+

If(CONTAINS(Title,&quot;Director&quot;),10,0 +

CASE(Industry,&quot;Technology&quot;,15,0)+

CASE(Industry,&quot;Telecom&quot;,5,0)+

CASE(LeadSource,&quot;Referral&quot;,15,0)+

CASE(LeadSource,&quot;Website&quot;,5,0))</formula>
        <name>Populate the WR</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>WF_Relevancy</fullName>
        <actions>
            <name>Populate_the_WR</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
