Feature: Incident Management

Scenario Outline: Delete Incident

Given url 'https://dev49243.service-now.com/api/now/table/incident/<sys_id>'
And header Authorization = call read('basic-auth.js') { username: 'admin', password: 'Tuna@123' }
When method delete
Then status 204

Examples:
| sys_id |
| 89d79ec12f2410100510d6ab2799b676|
| 12f75a012fa410100510d6ab2799b637|
