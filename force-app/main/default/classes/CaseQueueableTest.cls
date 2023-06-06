@istest
public with sharing class DeleteClosedLostOppsBatchTest {
  @TestSetup
  static void makeData() {
    List<Opportunity> listOpp = new List<Opportunity>();
    for (integer i = 0; i < 200; i++) {
      Opportunity opp = new Opportunity();
      opp.Name = 'Test Opp' + i;
      opp.CloseDate = Date.today();
      opp.StageName = 'Closed Lost';
      listOpp.add(opp);
    }
    insert listOpp;
  }

  @istest
  public static void testMethodBatch() {
    Test.starttest();
    DeleteClosedLostOppsBatch dcl = new DeleteClosedLostOppsBatch();
    Database.executeBatch(dcl, 200);
    Test.stopTest();

    List<Opportunity> listCheckOpp = [SELECT id FROM Opportunity];
    System.assertEquals(0, listCheckOpp.size());
  }

  @istest
  public static void testMethodSchedule() {
    DeleteClosedLostOppsBatchSchedulable dcs = new DeleteClosedLostOppsBatchSchedulable();
    Test.startTest();
    Id JobId = system.schedule(
      'Delete Closed Lost Opp',
      '0 0 12 1/1 * ? *',
      dcs
    );
    Test.stopTest();

    CronTrigger cr = [
      SELECT TimesTriggered, NextFireTime
      FROM CronTrigger
      WHERE Id = :jobID
    ];
    system.assertEquals('2023-01-08 12:00:00', string.valueOf(cr.NextFireTime));
    system.assertEquals(0, cr.TimesTriggered);
  }
}