@ignore
Feature: Create New Incident

Scenario:
Given url 'https://dev49243.service-now.com/api/now/table/incident'
And header Authorization = call read('basic-auth.js') { username: 'admin', password: 'Tuna@123' }
And request {"short_descrption": "Create using Karate"}
When method post
Then status 201
