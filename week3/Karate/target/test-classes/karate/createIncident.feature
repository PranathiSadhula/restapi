Feature: Incident Management

Scenario: Create Incident

Given url 'https://dev97765.service-now.com/api/now/table/incident'
And header Authorization = call read('basic-auth.js') { username: 'admin', password: 'Pranathi75@' }
When method get
Then status 200
And match header Content-Type contains 'application/json'
