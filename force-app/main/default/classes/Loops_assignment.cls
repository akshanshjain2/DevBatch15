public class Loops_assignment {
    public Integer whileLoopMethod (Integer n){
        Integer i = 1;
        while(i < = n){ // 1, 2, 3......,20
            System.debug(i);//20 - last
            i++;//21
        }
        return i;
    }

    public void printEven(){
        for(Integer i = 0; i <  100; i++){
            if(Math.mod(i, 2) == 0){//2,4,6,......100
                System.debug(i);
            }
        }
    }

    public Integer printPower(Integer n){//5
        Integer result = 1;
        for(Integer i = 0; i < n; i++){//0,1,2,3,4
            result = result * n;//1*5=5
        }
        //5*5*5*5*5 = 3125
        return result;
    }
}
