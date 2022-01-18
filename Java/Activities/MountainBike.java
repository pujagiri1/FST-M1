package Activity7;

public class MountainBike extends Bicycle{
	
        //The MountainBike subclass adds one more field
        public int seatHeight;

        //The MountainBike subclass has one constructor
        public MountainBike(int gears, int currentSpeed, int height) {
            //Invoking base-class(Bicycle) constructor
            super(gears, currentSpeed);	
            seatHeight = height;
        }

        // the MountainBike subclass adds one more method
        public void setHeight(int newValue) {
            seatHeight = newValue;
        }

        public String bicycleDesc() {
            return (super.bicycleDesc()+ "\nSeat height is: " + seatHeight);
        }  
    }

