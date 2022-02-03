package JavaTest;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Activity5_2 {
	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		WebDriver driver=new FirefoxDriver();
		driver.get("https://www.training-support.net/selenium/dynamic-controls");
		String title=driver.getTitle();
		System.out.println("Title is:"+title);
		WebElement checkboxInput = driver.findElement(By.xpath("//input[@type='checkbox']"));
		System.out.println("Checkbox is selected: " + checkboxInput.isSelected());
		checkboxInput.click();
		System.out.println("Checkbox is selected: " + checkboxInput.isSelected());

		driver.close();

	}
}
