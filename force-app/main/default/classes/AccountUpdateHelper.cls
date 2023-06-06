public class AccountUpdateHelper {
    @InvocableMethod
    public static void updateAccountWebsite(List<Id> accIds){
        List<Account> accountToUpdate = new List<Account>();
        System.debug(accIds);
        List<Account> accList = [Select Id, Name, Website from Account where Id in :accIds];
        for(Account eachAcc : accList){
            eachAcc.Website = 'www.softinnovas.com';
            accountToUpdate.add(eachAcc);
        }
        if(!accountToUpdate.isEmpty()){
            update accountToUpdate;
        }
    }
}