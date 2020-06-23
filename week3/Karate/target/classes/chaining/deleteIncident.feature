Feature: Delete Incident

Background:
  * def resp = call read('createIncident.feature')
  * def sys_id = resp.response.result.sys_id
    
Scenario: Delete Incident Using Create Incident Sys_Id

Given print 'The new sys_id is : ', sys_id
And url 'https://dev49243.service-now.com/api/now/table/incident/'+sys_id
And header Authorization = call read('basic-auth.js') { username: 'admin', password: 'Tuna@123' }
When request 
And method delete
Then status 204