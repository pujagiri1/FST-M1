package JavaTest;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Activity3 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
      WebDriver driver=new FirefoxDriver();
      driver.get("https://training-support.net/selenium/simple-form");
      String title=driver.getTitle();
      System.out.println("Title is:"+title);
      WebElement firstName=driver.findElement(By.id("firstName"));
      WebElement lastName=driver.findElement(By.id("lastName"));
    
      firstName.sendKeys("puja");
      lastName.sendKeys("g");
      WebElement email=driver.findElement(By.id("email"));
      WebElement contact=driver.findElement(By.id("number"));
      email.sendKeys("puja.giri@gmail.com");
      contact.sendKeys("9988765678");
      driver.findElement(By.cssSelector(".ui.green.button")).click();
      driver.close();
	}
}
