//database.executeBatch returns JOB ID.
Id JobId = Database.executeBatch(new DepartmentsBatch(), 5);
system.debug('JOB ID is ' + JobId);