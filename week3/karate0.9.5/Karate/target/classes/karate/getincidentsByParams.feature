Feature: Incident Management

Scenario Outline: Get All Incidents for different params
 
 # Multiple parameters
* def query = { sysparm_fields: <sysparm_fields>, category: <category>, sysparm_limit: <sysparm_limit> }
* print query
    
Given url 'https://dev49243.service-now.com/api/now/table/incident'
And header Authorization = call read('basic-auth.js') { username: 'admin', password: 'Tuna@123' }
And params query
And method get
Then status 200
And match header Content-Type contains 'application/json'
Then print response

Examples:
| sysparm_fields   			 | category   | sysparm_limit |
| 'number, sys_id,severity'  | 'software' | 2|
| 'number,severity'  		 | 'inquiry'  | 1|
