<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Enhancement_Approve</fullName>
        <description>Enhancement Approve</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Test_Tracker_Professional/Enhancement_Aprroved</template>
    </alerts>
    <alerts>
        <fullName>Enhancement_Reject</fullName>
        <description>Enhancement Reject</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Test_Tracker_Professional/Enhancement_Rejected</template>
    </alerts>
    <fieldUpdates>
        <fullName>Enhancement_Aprroved</fullName>
        <description>To update the status field as approved</description>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Enhancement Aprroved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Enhancement_Rejected</fullName>
        <description>To update the status field as rejected</description>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Enhancement Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Enhancement_Submission</fullName>
        <description>To update the status field as submitted</description>
        <field>Status__c</field>
        <literalValue>Submitted</literalValue>
        <name>Enhancement Submission</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
