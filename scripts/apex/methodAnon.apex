MethodsDemo m1 = new MethodsDemo();
m1.samplePrintMessage('sgahdasdg');

String s1 = 'sd';
m1.samplePrintMessage(s1);
//m1.returnMessage('Jenny');//will this give me error? method works

//returnMessage is returning a string
    //so, we are assignment to a string variable called r1
String r1 = m1.returnMessage('Jenny');
system.debug(r1);

system.debug('-------------------');

string returnString = m1.returnMessage('Esra');
system.debug(returnString);




m1.newMessage('Hank');

string ssss = 'Yash';
m1.newMessage(ssss);

Integer res = m1.returnLength('Akshansh');

// m1.welcomeMessage();
// m1.samplePrintMessage('Hello hello');