public class Decimal_Assignment {
    public void decimalMethods() {
        String s1 = '123.456789';
        Decimal d1 = Decimal.valueOf(s1);
        Decimal d2 = d1.setScale(2);
        System.debug('Value of s1 is ' + s1);
        System.debug('Value of d1 is ' + d1);
        System.debug('Value of d2 is ' + d2);
    }
}