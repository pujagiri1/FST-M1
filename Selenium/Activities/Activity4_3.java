package JavaTest;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Activity4_3 {
	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		WebDriver driver=new FirefoxDriver();
		driver.get("https://www.training-support.net/selenium/target-practice");
		String title=driver.getTitle();
		System.out.println("Title is:"+title);
		WebElement thirdHeader=driver.findElement(By.xpath("//h3[@id='third-header']"));
		WebElement fifthHeader=driver.findElement(By.xpath("//h5[@class='ui green header']"));
		Thread.sleep(3000);
		String bgcolor=fifthHeader.getCssValue("color");
         System.out.println("Color of the nevigation menu:"+bgcolor);
         String violetButton = driver.findElement(By.xpath("//button[contains(text(), 'Violet')]")).getAttribute("class");
         System.out.println("Violet button's classes are: " + violetButton);
         String greyButton = driver.findElement(By.xpath("/html/body/div/div[2]/div/div[2]/div/div/div/div[2]/div[3]/button[2]")).getText();
         System.out.println("The grey button's text is: " + greyButton);
         driver.close();

	}

}
