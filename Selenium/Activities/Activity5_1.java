package JavaTest;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Activity5_1 {
	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		WebDriver driver=new FirefoxDriver();
		driver.get("https://training-support.net/selenium/dynamic-controls");
		String title=driver.getTitle();
		System.out.println("Title is:"+title);
		WebElement checkboxInput = driver.findElement(By.xpath("//input[@class='willDisappear']"));
        System.out.println("The checkbox Input is displayed: " + checkboxInput.isDisplayed());
        driver.findElement(By.id("toggleCheckbox")).click();
        System.out.println("The checkbox Input is displayed: " + checkboxInput.isDisplayed());
        driver.close();

}
}
