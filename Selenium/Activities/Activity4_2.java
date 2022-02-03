package JavaTest;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Activity4_2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		WebDriver driver=new FirefoxDriver();
		driver.get("https://www.training-support.net/selenium/simple-form");
		String title=driver.getTitle();
		System.out.println("Title is:"+title);
		WebElement firstName=driver.findElement(By.xpath("//input[@id='firstName']"));
		WebElement lastName=driver.findElement(By.xpath("//input[@id='lastName']"));

		firstName.sendKeys("puja");
		lastName.sendKeys("g");
		WebElement email=driver.findElement(By.xpath("//input[@id='email']"));
		WebElement contact=driver.findElement(By.xpath("//input[@id='number']"));
		email.sendKeys("puja.giri@gmail.com");
		contact.sendKeys("9988765678");
		driver.findElement(By.xpath("//textarea")).sendKeys("I am in training submit form");
		driver.findElement(By.xpath("//input[contains(@class,'green')]")).click();
		//driver.close();
	}

}
