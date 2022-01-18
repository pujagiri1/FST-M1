package Activity1;

public class Car {
String color;
String transmission;
int make;
int tyres;
int doors;
   Car() {
	tyres=4;
	doors=4;
}
 public void displayCharacteristics()
 {
	 System.out.println("Color of Car is:" +color);
	 System.out.println("Transmission of Car is:" +transmission);
	 System.out.println("Make of Car is:" +make);
	 System.out.println("Tyres of Car is:" +tyres);
	 System.out.println("Doors of Car is:" +doors);
 }
 public void accelarate()
 {
	 System.out.println("Car is moving forward.");
 }

 public void brake()
 {
	 System.out.println("Car has stopped.");
 }
}
