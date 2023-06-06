List<Account> acList = new List<Account>();
for(Integer i = 0; i < 5; i++){
    Account acc = new Account();
    acc.name = 'Review ' + i;
    acList.add(acc);
}
Insert acList;