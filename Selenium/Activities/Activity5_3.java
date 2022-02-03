package JavaTest;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Activity5_3 {
	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		WebDriver driver=new FirefoxDriver();
		driver.get("https://training-support.net/selenium/dynamic-controls");
		String title=driver.getTitle();
		System.out.println("Page Title is:"+title);
		WebElement textField = driver.findElement(By.xpath("//div[@id='dynamicText']"));
		System.out.println("Text field is enabled: " + textField.isEnabled());
		WebElement enableTextField = driver.findElement(By.xpath("//button[@id='toggleInput']"));
		enableTextField.click();
		System.out.println("Text field is enabled: " + textField.isEnabled());
        driver.close();

}
}
