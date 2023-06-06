Datetime todayDate = Datetime.now();
Long todayDateinMS = todayDate.getTime(); // 1970 + 2023
System.debug('todayDate ' + todayDate);
System.debug('todayDateinMS ' + todayDateinMS);
Datetime birthDate = Datetime.newInstance(1986, 01, 17);
Long birthDateMs = birthDate.getTime(); // 1970 + 1986
System.debug('birthDate ' + birthDate);
System.debug('birthDateMs ' + birthDateMs);
//1970 + birthDate - (19070 + today)
//1970 + birthdate - 1970 - today
System.debug('My BD in ms ' + (todayDateinMS - birthDateMs));
System.debug('My BD in ms ' + (birthDateMs - todayDateinMS));
Integer i = 1;
System.debug(i++);