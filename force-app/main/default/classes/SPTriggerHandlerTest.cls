@isTest
public class SPTriggerHandlerTest {
    @isTest
    public static void testCreateDefaultTicket() {
        List<Salesforce_Project__c> spList = new List<Salesforce_Project__c>();
        for(Integer i = 0; i < 500; i++){
            Salesforce_Project__c sp = new Salesforce_Project__c(Project_Name__c = 'Name ' + i, Status__c = 'New');
            spList.add(sp);
        }
        insert spList;
        List<Salesforce_Ticket__c> stResult = [Select Id, Subject__c from Salesforce_Ticket__c];
        Assert.areEqual(500, stResult.size());
        Assert.isTrue(stResult[0].Subject__c.contains('Default'));
    }
}