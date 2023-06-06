@isTest
public class DmlDemo15Test {
    @isTest
    private static void testDML1() {
        //this is create one record. 
            //Where? It will NOT create record in the org.
        DmlDemo15.dmlInsertDemo1(); 

        //how to assert if record is created?
        //soql
        list<account> listAcc = [select id, name from account];
        
        system.assertEquals(1, listAcc.size());
        Assert.areEqual(1, listAcc.size());

        Assert.areEqual('Salesforce', listAcc[0].name);
        Assert.areNotEqual('softinnovas', listAcc[0].name);//not equal then it will pass the test
    }
    @isTest
    public static void testDML2(){
        
        //call method
        DmlDemo15.dmlInsertDemoCO1();
        //assert
            //soql to get records
        list<department__c> listdep = [select id, name__c from department__c];
        system.assertEquals(1, listdep.size());
        assert.areequal(1, listdep.size());
        Assert.areEqual('Human Resource', listdep[0].name__c);
    }

    @isTest
    private static void testDML3() {
        //prepare data
        Account acc3 = new account(name = 'acc test');
        insert acc3;


        //call method
        DmlDemo15.dmlUpdateDemo2();
        
        //what to assert?
            // what functionality is our method implemeting?
            //method is updating name
            //we will assert is name is updated.
        
        account accAssert = [select id, name from account where id = :acc3.Id];
        Assert.areEqual('Softinnovas Inc.', accAssert.Name);
    }

}