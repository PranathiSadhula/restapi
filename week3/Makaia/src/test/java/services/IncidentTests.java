package services;

import org.testng.annotations.Test;
import io.restassured.RestAssured;
import static org.hamcrest.Matchers.containsString;

import java.io.File;

public class IncidentTests extends BaseRequest{
	
	
	//@Test
	public void getIncidents(){
		System.out.println("@ test is executing ");
		request
			.get("incident")
			.then()
			.assertThat()
			.statusCode(200)
			.body(containsString("number"),containsString("sys_id"));		
	}
	
	//@Test
	public void createIncident(){
		sys_id = request
			.body(new File("./data/incident1.json"))
			.post("incident")
			.then()
			.assertThat()
			.statusCode(201)
			.body(containsString("number"),containsString("sys_id"))
			.extract()
			.path("result.sys_id")
			;
	}
	
	//@Test(dependsOnMethods = "createIncident")
	public void deleteIncident() {
		request
		.delete("incident/"+sys_id)
		.then()
		.assertThat()
		.statusCode(204);
	}
}
