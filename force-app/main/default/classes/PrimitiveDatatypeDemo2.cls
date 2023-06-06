public class PrimitiveDatatypeDemo2 {
    public void printNewDate(){
         system.debug('create new date variable');
 
         //datatype              //newIntance (year, month, day)
         date newDate1 = Date.newInstance(1992, 4, 15);
         system.debug(newDate1);//15-4-1992
 
         date newDate2 = Date.newInstance(2020, 3, 20);
         system.debug(newDate2);//20-3-2020
 
         date todayDate = date.today();//will return us TODAY's date
         //escape character -> back slash \ 
         system.debug('today\'s date is ' + todayDate);//04-04-2023
    }
 
    public void printNewTime(){
         Time myTime1 = time.newInstance(11, 10, 30, 50);
         system.debug(myTime1);
         Time myTime2 = time.newInstance(21, 12, 15, 40);
         system.debug(myTime2);
    }
 
    public void printNewDateTime(){
 
         //methodname to create new DATETIME is newInstance
         date        newDate2 = Date.newInstance(2020, 3, 20);
         Time myTime1 = time.newInstance(11, 10, 30, 50);//11:10:30:50
         //1. new DateTime using i) date and ii) time
         datetime dt1 = datetime.newInstance(newDate2, myTime1);
         system.debug('dt 1 is ' + dt1);
 
         //2. new DateTime using year, month, day --> time will be midnight 00000
         datetime dt2 = datetime.newInstance(2021,1,5);// 2021-1-5 00:00:00:00
             //2021-01-05 0000 for argentina
                 // what will this time be for GMT
                     // 2021-01-05 0300
             //it create datetime with user's timezone midnight
         system.debug('dt2 is ' + dt2);//while printing, it prints gmt
 
         //3. datetime using year, month, day, hour, min, sec
         Datetime dt3 = datetime.newInstance(2021, 5, 19, 6, 15, 50);
         system.debug('dt3 is ' + dt3);
 
         //6. current datetime
         datetime dt6 = datetime.now();
         system.debug('dt6 is ' + dt6);
    }

    public void test1(String p1, Integer p2){

    }
 }