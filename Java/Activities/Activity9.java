package Activity9;

import java.util.ArrayList;

public class Activity9 {

	public static void main(String[] args) {
        ArrayList<String> myList = new ArrayList<String>();
        myList.add("Air");
        myList.add("Water");
        myList.add("Fire");
        //Adding object at specific index
        myList.add(3, "Mad");
        myList.add(1, "Sky");
        
        System.out.println("Print All the Objects:");
        for(String s:myList){
            System.out.println(s);
        }
        
        System.out.println("3rd element in the list is: " + myList.get(2));
        System.out.println("Is Chicku is in list: " + myList.contains("Earth"));
        System.out.println("Size of ArrayList: " + myList.size());
        
        myList.remove("Sky");
        
        System.out.println("New Size of ArrayList: " + myList.size());
    }
	}


