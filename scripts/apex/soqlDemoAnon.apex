soqlDemo4.accDynamicSOQL1('name');
system.debug('-----');
SoqlDemo4.accDynamicSOQL1('name, website, phone, shippingcity, active__c');

List<Employee__c> empList = SoqlAssignment1.topEmployees();
for(Employee__c eachEmp : empList){
    System.debug('Employee : ' + eachEmp);
}

String mpCountry = SoqlAssignment1.mostPopulatedCountry();
System.debug('Most poulated country : ' + mpCountry);