@isTest
public class SOQLDemoNewTest {

    @isTest
    public static void testQueryHotAccounts() {
        // Account acc = new Account(Name='new test Account', Rating='Hot');
        // Insert acc;
        
        for(Integer i=0; i <100; i++){
            Account acc = new Account(Name='new test Account A' + i, Rating='Hot');
            Insert acc;
        }

        List<Account> accList = [Select Id, Name, Rating from Account where Rating = 'Hot'];
        System.debug('Acc size method 1: ' + accList.size());
        Test.startTest();
        Integer result = SOQLDemoNew.queryHotAccounts();
        Test.stopTest();
        Assert.areEqual(101, result);
    }
    @isTest
    private static void testQueryHotAccounts1() {
        
        for(Integer i=0; i <100; i++){
            Account acc = new Account(Name='new test Account B' + i, Rating='Hot');
            Insert acc;
        }

        List<Account> accList = [Select Id, Name, Rating from Account where Rating = 'Hot'];
        System.debug('Acc size method 2: ' + accList.size());
        Test.startTest();
        Integer result = SOQLDemoNew.queryHotAccounts();
        Test.stopTest();
        Assert.areEqual(101, result);
    }

}