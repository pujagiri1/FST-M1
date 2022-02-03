package appium;

import java.net.MalformedURLException;
import java.net.URL;

import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import io.appium.java_client.MobileBy;
import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;

public class Activity3 {

	 WebDriverWait wait;
	    AndroidDriver<MobileElement> driver = null;

	    @BeforeClass
	    public void setup() throws MalformedURLException {
	    	 DesiredCapabilities caps = new DesiredCapabilities();
	         caps.setCapability("deviceName", "<Your device name>");
	         caps.setCapability("platformName", "Android");
	         caps.setCapability("automationName", "UiAutomator2");
	         caps.setCapability("appPackage", "com.android.calculator2");
	         caps.setCapability("appActivity", ".Calculator");
	         caps.setCapability("noReset", true);
	         
	         URL appServer = new URL("http://0.0.0.0:4723/wd/hub");
	         driver = new AndroidDriver<>(appServer, caps);
	    }

	    @Test
	    public void add() {


	        driver.findElementById("digit_5").click();
	        driver.findElementById("op_add").click();
	        driver.findElementById("digit_9").click();
	        driver.findElementById("eq").click();
	        String addResult = driver.findElementById("result").getText();
	        System.out.println(addResult);
	        Assert.assertEquals(addResult, "14");
	    }
	    @Test
	    public void substract() {   
	        driver.findElementById("digit_1").click();
	        driver.findElementById("digit_0").click();
	        driver.findElementById("op_sub").click();
	        driver.findElementById("digit_5").click();
	        driver.findElementById("eq").click();
	        String subResult = driver.findElementById("result").getText();
	        System.out.println(subResult);
	        Assert.assertEquals(subResult, "5");
	    }
	    @Test
	    public void multiply() {
	        driver.findElementById("digit_5").click();
	        driver.findElementById("op_mul").click();
	        driver.findElementById("digit_1").click();
	        driver.findElementById("digit_0").click();
	        driver.findElementById("digit_0").click();
	        driver.findElementById("eq").click();
	        String mulResulttwo = driver.findElementById("result").getText();
	        System.out.println(mulResulttwo);
	        Assert.assertEquals(mulResulttwo, "500");
	    }
	    @Test
	    public void division() {   
	        driver.findElementById("digit_5").click();
	        driver.findElementById("digit_0").click();
	        driver.findElementById("op_div").click();
	        driver.findElementById("digit_2").click();
	        driver.findElementById("eq").click();
	        String divResulttwo = driver.findElementById("result").getText();
	        System.out.println(divResulttwo);
	        Assert.assertEquals(divResulttwo, "25");

	    }
	    
	    

	    @AfterTest
	    public void tearDown() {
	        driver.quit();
	    }

}
