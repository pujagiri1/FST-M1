package Activity11;

import java.util.HashMap;

public class Activity11 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HashMap<Integer, String> hash_map = new HashMap<Integer, String>();
        hash_map.put(1, "Green");
        hash_map.put(2, "Yellow");
        hash_map.put(3, "Red");
        hash_map.put(4, "White");
        hash_map.put(5, "Blue");
 
        System.out.println("The Final map: " + hash_map);
        
        hash_map.remove(4);
        System.out.println("After removing White: " + hash_map);
        
        if(hash_map.containsValue("Green")) {
            System.out.println("Green exists in the Map");
        } else {
            System.out.println("Green does not exist in the Map");
        }
        
        System.out.println("Number of pairs in the Map is: " + hash_map.size());
	}

}
