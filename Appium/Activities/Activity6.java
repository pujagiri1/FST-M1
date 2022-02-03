package appium;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import io.appium.java_client.MobileBy;
import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;

public class Activity6 {
	  AndroidDriver<MobileElement> driver;
	    WebDriverWait wait;

	    @BeforeClass
	    public void beforeClass() throws MalformedURLException {
	        DesiredCapabilities caps = new DesiredCapabilities();
	        caps.setCapability("deviceName", "pixelemulator");
	        caps.setCapability("platformName", "Android");
	        caps.setCapability("automationName", "UiAutomator2");
	        caps.setCapability("appPackage", "com.android.chrome");
	        caps.setCapability("appActivity", "com.google.android.apps.chrome.Main");
	        caps.setCapability("noReset", true);

	        URL appServer = new URL("http://127.0.0.1:4723/wd/hub");
	        driver = new AndroidDriver<MobileElement>(appServer, caps);
	        wait = new WebDriverWait(driver, 5);

	        driver.get("https://www.training-support.net/selenium/lazy-loading");
	    }

	    @Test
	    public void imageScrollTest() {
	        MobileElement pageTitle = driver.findElementByXPath("//android.view.View[@text='Lazy Loading']");
	        wait.until(ExpectedConditions.textToBePresentInElement(pageTitle, "Lazy Loading"));

	        List<MobileElement> numberOfImages = driver.findElementsByXPath("//android.view.View/android.view.View/android.widget.Image");
	        System.out.println("Number of image shown currently: " + numberOfImages.size());

	        Assert.assertEquals(numberOfImages.size(), 2);

	        driver.findElement(MobileBy.AndroidUIAutomator("UiScrollable(UiSelector()).scrollTextIntoView(\"helen\")"));

	        numberOfImages = driver.findElementsByXPath("//android.view.View/android.view.View/android.widget.Image");
	        System.out.println("Number of image shown currently: " + numberOfImages.size());

	        Assert.assertEquals(numberOfImages.size(), 2);
	    }

	    @AfterClass
	    public void afterClass() {
	        driver.quit();
	    }
}
