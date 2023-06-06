MethodsAssignment ma = new MethodsAssignment();
String message1 = ma.printWelcome('ROBIN');
System.debug(message1);
String message2 = ma.printWelcome('Esra');
System.debug(message2);

ArthimaticCalculations ac = new ArthimaticCalculations();
Integer add = ac.addition(1, 3);
System.debug('add : ' + add);
Integer sub = ac.subtraction(1, 3);
System.debug('sub : ' + sub);
Integer mul = ac.multiplication(1, 3, 4);
System.debug('mul : ' + mul);
String res = ac.concatStrings('Soft', 'Innovas');
System.debug('res : ' + res);
