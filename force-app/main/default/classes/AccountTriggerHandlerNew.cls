public class AccountTriggerHandlerNew {
    public static void validateHotRating (List<account> accTriggerNew, List<Account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
        List<Account> accList = [Select Id, Name, Rating, (Select Id, Name, StageName from Opportunities where StageName != 'Closed Won') from Account where Id in :accTriggerNewMap.keySet()];
        System.debug(accList);
        for(Account acc : accList){
            if(acc.Opportunities.size() < 3 && accTriggerNewMap.get(acc.id).Rating == 'Hot'){
                accTriggerNewMap.get(acc.id).Rating.addError('Cannot update Rating. Please user! Go away!');
            }
        }
    }
}