public class ModernMaths {
    public static void printFactors(Integer num) {
        List<Integer> factors = new List<Integer>();
        for(Integer i = 1; i <= num; i++){
            if(Math.mod(num, i) == 0){
                factors.add(i);
            }
        }
        System.debug(factors);
    }
}