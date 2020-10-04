package Runner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features= {"src/test/resources/Login/Login.feature"},
glue = {"StepDefinition"},
tags= "@Login",
dryRun= false, // to find out if any step is missed
monochrome= true, //to make console output in a better format
strict= true, //will check any steps in the feature file is missed in the implementation
plugin = {"html:testout/anjali.html","junit:testout/cucumber.xml","json:testout/cucumber.json"}
)
public class Test_Runner {

}
