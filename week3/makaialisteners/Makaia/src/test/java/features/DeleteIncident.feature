Feature: Delete Incident
@ignore
  Scenario: Delete random incident
	Given user is authenticated
	When get all incidents
	And get randam incident sys_id 
	And delete the incident
	Then the status code is 204

 Scenario: Delete recent incident
	Given user is authenticated
	When get all incidents
	And get recent incident sys_id 
	And delete the incident
	Then the status code is 204