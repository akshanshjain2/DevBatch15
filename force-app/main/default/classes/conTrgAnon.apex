//perform create
Contact con = new Contact();
con.LastName = 'Test';
insert con;

//perform update
con.LastName = 'Updated Test';
update con;

//perform delete
delete con;

//perform undelete
undelete con;