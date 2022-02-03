package JavaTest;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Activity8_2 {
	public static void main(String[] args) throws InterruptedException {

		WebDriver driver=new FirefoxDriver();
		driver.get("https://training-support.net/selenium/tables");
		Thread.sleep(5000);
		List<WebElement> cols=driver.findElements(By.xpath("//table[@id='sortableTable']/thead/tr/th"));
		System.out.println("number of coloumns are "+cols.size());
		List<WebElement> rows=driver.findElements(By.xpath("//table[@id='sortableTable']/tbody/tr"));
		System.out.println("number of rows are "+rows.size());
		System.out.println("Values at 2 row amd 2 coloumns are "+driver.findElement(By.xpath("//table[@id='sortableTable']/tbody/tr[2]/td[2]")).getText());
		driver.findElement(By.xpath("//table[@id='sortableTable']/thead/tr/th[1]")).click();
		System.out.println("Values at 2 row amd 2 coloumns are "+driver.findElement(By.xpath("//table[@id='sortableTable']/tbody/tr[2]/td[2]")).getText());
		WebElement footer = driver.findElement(By.xpath("//table[@id='sortableTable']/tfoot/tr"));
		System.out.println("Table footer values: " + footer.getText());
		driver.close();
	}
}
