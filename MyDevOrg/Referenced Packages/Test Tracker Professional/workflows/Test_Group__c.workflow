<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Test_Group_Approval_Email</fullName>
        <description>Test Group Approval Email</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Test_Tracker_Professional/Test_Group_Approval_Notification</template>
    </alerts>
    <alerts>
        <fullName>Test_Group_Rejection_Email</fullName>
        <description>Test Group Rejection Email</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Test_Tracker_Professional/Test_Group_Rejection_Notification</template>
    </alerts>
    <fieldUpdates>
        <fullName>Test_Group_Status_Approved</fullName>
        <description>This is to change the status field as approved when the record has approved by an approver</description>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Test Group Status Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Test_Group_Status_Approved_Checkbox</fullName>
        <field>Is_Approved__c</field>
        <literalValue>1</literalValue>
        <name>Test Group Status Approved Checkbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Test_Group_Status_Rejected</fullName>
        <description>This is to set the field value as rejected when the test group has been rejected by the approver.</description>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Test Group Status Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Test_Group_Status_Submitted</fullName>
        <description>This is to change the test group status field to submitted.</description>
        <field>Status__c</field>
        <literalValue>Submitted</literalValue>
        <name>Test Group Status Submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>
