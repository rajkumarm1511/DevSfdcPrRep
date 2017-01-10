public class testemail
{
private final Contact con;
public testemail(ApexPages.StandardController controller)
{
this.con=(Contact)controller.getRecord();
}

public void SendEmail()
{
Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
mail.setTargetObjectId(con.Id);
mail.setTemplateId('00Xi00000016KwK');
Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
}
}