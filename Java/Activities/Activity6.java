package Activity6;

public class Activity6 {

	public static void main(String[] args) throws InterruptedException {
       Plane plane=new Plane(10);
       plane.onboard("Passenger1");
       plane.onboard("Passenger2");
       plane.onboard("Passenger3");
       plane.onboard("Passenger4");
       System.out.println("plane take off time:"+plane.takeOff());
       System.out.println("passengers on the plane:"+plane.getPassesngers());
       Thread.sleep(5000);
       plane.land();
       System.out.println("plane landed at :"+plane.getLastTimeLanded());
       System.out.println("passengers on the plane after landing:"+plane.getPassesngers());

	}

}
