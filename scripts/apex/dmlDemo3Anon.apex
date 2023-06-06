DML3_Assgn.createBulkContacts();
Integer ruffaloContacts = DML3_Assgn.updateBulkContacts('Ruffalo', '9876543210');
System.debug('ruffaloContacts :: ' + ruffaloContacts);
Integer johanssonContacts = DML3_Assgn.updateBulkContacts('Johansson', '1234567890');
System.debug('johanssonContacts :: ' + johanssonContacts);
