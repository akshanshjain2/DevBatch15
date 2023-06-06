public class DML3_Assgn {
    public static void createBulkContacts() {
        List<Contact> contactsToInsert = new List<Contact>();
        for(Integer i = 0; i < 4; i++){
            Contact con = new Contact();
            con.FirstName = 'Mark';
            con.LastName = 'Ruffalo';
            contactsToInsert.add(con);
        }
        for(Integer i = 0; i < 3; i++){
            Contact con = new Contact();
            con.FirstName = 'Chris';
            con.LastName = 'Hemsworth';
            contactsToInsert.add(con);
        }
        for(Integer i = 0; i < 3; i++){
            Contact con = new Contact();
            con.FirstName = 'Scarlett';
            con.LastName = 'Johansson';
            contactsToInsert.add(con);
        }
        if(!contactsToInsert.isEmpty()){
            insert contactsToInsert;
        }
    }

    public static Integer updateBulkContacts(String lastName, String phoneNumber) {
        Integer result = 0;
        List<Contact> qualifiedContacts = [Select Id, LastName, Phone From Contact Where LastName = :lastName];
        List<Contact> contactsToUpdate = new List<Contact>();
        for(Contact eachCon : qualifiedContacts){
            eachCon.Phone = phoneNumber;
            contactsToUpdate.add(eachCon);
        }
        if(!contactsToUpdate.isEmpty()){
            update contactsToUpdate;
        }
        result = contactsToUpdate.size();
        return result;
    }
}