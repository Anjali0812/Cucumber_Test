@Login
Feature: Login feature
This feature includes scenario that would validate the following logins
 1. Admin Login
 2. linda.anderson
 3. Negative Login
 
 Background:
 Given i am able to navigate on login page
 
 #Scenario: Admin Login
 #Given i am able to navigate on login page
 #When i update the username as "linda.anderson"
 #And i update the password as "linda.anderson" 
 #And i click on the login button
 #Then i should see the username as "Welcome Rushikesh"
 #
 #Scenario: linda.anderson Login
 #Given i am able to navigate on login page
 #When i update the username as "linda.anderson"
 #And i update the password as "linda.anderson" 
 #And i click on the login button
 #Then i should see the username as "Welcome Linda"
 
 Scenario Outline: Login with different users
 When i update the username as "<user>"
 And i update the password as "<password>" 
 And i click on the login button
 Then i should see the username as "<name>"
 
 Examples:
 |user          |password          |name             |
 |linda.anderson|linda.anderson    |Welcome Linda    |
 |linda.anderson|linda.anderson    |Welcome Linda    |
 
 
 Scenario: negative login
 Given i am able to navigate on login page
 When i update the username as "sunil"
 And i update the password as "sunil" 
 And i click on the login button
 Then i should see the error message as "Invalid credentials"
 