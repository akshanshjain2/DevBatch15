public class SoqlAssignment1 {
    public static List<Employee__c> topEmployees(){
        //query top 5 employees
        List<Employee__c> empList = [Select Id, First_Name__c, Last_Name__c, Salary__c from Employee__c Order by Salary__c DESC Limit 5];
        return empList;
    }
    
    public static String mostPopulatedCountry(){
        //query Country and it's population(Count of employees) and then have country with highest count
        AggregateResult result = [Select Country__c, COUNT(Id) from Employee__c Group By Country__c Order By COUNT(Id) DESC LIMIT 1];
        String mpCountry = String.valueOf(result.get('Country__c'));
        return mpCountry;
    }

}