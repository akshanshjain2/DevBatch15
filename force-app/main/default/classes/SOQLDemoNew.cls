public class SOQLDemoNew {
    public static Integer queryHotAccounts() {
        List<Account> accList = [Select Id, Name, Rating from Account where Rating = 'Hot'];
        System.debug(accList);
        for(Account acc : accList){
            System.debug('Acc :: ' + acc);
            System.debug('Acc Name :: ' + acc.Name);
        }
        newFutureMethod();
        return accList.size();
    }

    @future
    public static void newFutureMethod() {
        //Update SuppliedName
        System.debug('hoiiii');
        // List<Case> caseList = [Select Id, SuppliedName from Case];
        // for(Case eachCase : caseList){
        //     eachCase.SuppliedName = 'Akshansh';
        // }
        // update caseList;
    }
}