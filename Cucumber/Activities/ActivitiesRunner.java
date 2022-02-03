package Runner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
		features = "src\\test\\resources\\Features",
		glue = {"StepDefination"},
		plugin = { "pretty", "html:target/cucumber-reports/reports" },
				tags= "@SmokeTest",
				monochrome=true
		)

public class ActivitiesRunner {



}
