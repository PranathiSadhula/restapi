package services;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import org.testng.annotations.BeforeSuite;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.specification.RequestSpecification;

public class BaseRequest {
	
	protected RequestSpecification request;
	
	protected String sys_id;
	@BeforeSuite
	public void setUpReuqest() throws FileNotFoundException, IOException{
		Properties prop = new Properties();
		prop.load(new FileInputStream(new File("./src/test/resources/config.properties")));
		RestAssured.baseURI = "https://"+prop.getProperty("server")+"/"+prop.getProperty("resources")+"/";
		System.out.println("b4 suite ==>"+RestAssured.baseURI);
		RestAssured.authentication = RestAssured.basic(prop.getProperty("username"), prop.getProperty("password"));

		request = RestAssured.given().log().all().contentType(ContentType.JSON);
		
	}

	
}
