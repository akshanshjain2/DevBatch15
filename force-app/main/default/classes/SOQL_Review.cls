public  class SOQL_Review {
    public static void trySoql(){
        List<Account> accList = [Select Id, Name, Rating from Account where Rating = 'Hot'];
        System.debug(accList);
        for(Account acc : accList){
            System.debug('Acc :: ' + acc);
            System.debug('Acc Name :: ' + acc.Name);
        }

        Account acc = [Select Id, Name from Account LIMIT 1];
        System.debug('Acc :: ' + acc);

        List<Contact> accChildToParent = [Select Id, Name, Account.Name from Contact limit 1];

        List<Account> accParentToChild = [Select Id, Name,(Select id, Name from Contacts) from Account];

        for(Account acc1 : accParentToChild){
            for(Contact con : acc1.Contacts){
                System.debug(acc1 + ' : ' + con);
            }
        }
        List<AggregateResult> accList1 = [Select MAX(AnnualRevenue), MIN(AnnualRevenue) from Account];
        for(AggregateResult agrRes : accList1){
            System.debug(agrRes);
            System.debug('max : ' + agrRes.get('expr0'));
            System.debug('max : ' + agrRes.get('expr1'));
        }

    }
}