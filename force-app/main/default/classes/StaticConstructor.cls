public class StaticConstructor {
    public StaticConstructor() {
        method1();//static method called
    }

    public static void method1(){
        System.debug('This is a static method');
    }
}