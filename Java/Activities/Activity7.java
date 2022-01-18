package Activity7;

public class Activity7 {
	public static void main(String args[]) {
        MountainBike mountainbike = new MountainBike(5, 2, 30);
        System.out.println(mountainbike.bicycleDesc());
        mountainbike.speedUp(25);
        mountainbike.applyBrake(5);
    }
}
