<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Requirement_Review_Approval_Email</fullName>
        <description>Requirement Review Approval Email</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Test_Tracker_Professional/Requirement_Review_Status</template>
    </alerts>
    <alerts>
        <fullName>Requirement_Review_Email</fullName>
        <description>Requirement Review Rejection Email</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Test_Tracker_Professional/Requirement_Review_Status</template>
    </alerts>
    <fieldUpdates>
        <fullName>Review_Status_Field</fullName>
        <description>Review Status field should updated when the requirement is reviewed by the reviewer</description>
        <field>Review_Status__c</field>
        <literalValue>1</literalValue>
        <name>Review Status Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
