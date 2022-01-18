package Activity8;

public class Activity8 {
    public static void main(String[] a){
        try {
            Activity8.exceptionTest("I am a non null string");
            Activity8.exceptionTest(null); 
            Activity8.exceptionTest("Secind time not execute");
        } catch(CustomException e) {
            System.out.println("Inside catch block: " + e.getMessage());
        }
    }
 
    static void exceptionTest(String str) throws CustomException {
        if(str == null) {
            throw new CustomException("String value is null");
        } else {
            System.out.println(str);
        }
    }
}
