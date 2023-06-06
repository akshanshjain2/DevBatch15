public class Datetime_Assignment {
    public void dateMethods() {
        Date varDate = Date.newInstance(2001, 01, 01);
        System.debug('varDate : ' + varDate);
    }
    public void timeMethods() {
        Time varTime  = Time.newInstance(18, 21, 29, 00);
        System.debug('varTime : ' + varTime);
    }
    public void datetimeMethods() {
        //01-01-2001 06:21:29 pm
        Datetime varDatetime  = Datetime.newInstanceGmt(2001, 01, 01, 18, 21, 29);
        System.debug('varDatetime  : ' + varDatetime);
        //Today's date in ms
        //Birth date in ms
        //Diff betw above 2
    }
}