package runner;

import org.junit.runner.RunWith;

import io.cucumber.testng.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/java/features"}, 
						glue = {"pages.selenium","steps"},
						monochrome= true,
						dryRun = false,
						strict = false,
						plugin = {"html:reports/cucumber","json:reports/cucumber.json"}) 
public class RunJunit {


}
