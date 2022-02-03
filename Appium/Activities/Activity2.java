package appium;

import java.io.IOException;
import java.net.URL;

import org.openqa.selenium.remote.DesiredCapabilities;
import org.testng.Assert;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import io.appium.java_client.MobileBy;
import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;

public class Activity2 {
	// Declare Android driver
		AndroidDriver<MobileElement> driver;

		@BeforeTest
		public void Setup() throws IOException {
			// Set the Desired Capabilities
			DesiredCapabilities caps = new DesiredCapabilities();
			caps.setCapability("deviceName", "pixelemulator");
			caps.setCapability("platformName", "Android");
			caps.setCapability("automationName", "UiAutomator2");
			caps.setCapability("appPackage", "com.android.calculator2");
			caps.setCapability("appActivity", ".Calculator");
			caps.setCapability("noReset", true);

			// Instantiate Appium Driver
			URL appServer = new URL("http://127.0.0.1:4723/wd/hub");
			driver = new AndroidDriver<MobileElement>(appServer, caps);

		}


		@Test(priority=1)
		public void Multipy() throws IOException {
			// Using resource-id
			driver.findElementById("digit_5").click();
			// Using Accessibility ID
			driver.findElementByAccessibilityId("multiply").click();
			// Using XPath
			driver.findElementByXPath("//android.widget.Button[@text='9']").click();
			// Perform Calculation
			driver.findElementById("eq").click();
			// Display Result
			String result = driver.findElement(MobileBy.id("result")).getText();
			System.out.println(result);

			// Assertion
			Assert.assertEquals(result, "45");
		}


		@AfterTest
		public void tearDown() {
			// Close app
			driver.quit();
		}

}