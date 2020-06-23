Feature: Incident Management

Scenario: Create Incident

Given url 'https://dev49243.service-now.com/api/now/table/incident'
And header Authorization = call read('basic-auth.js') { username: 'admin', password: 'Tuna@123' }
When request {"short_descrption":"Created from Karate"}
And method post
Then status 201
And match header Content-Type contains 'application/json'