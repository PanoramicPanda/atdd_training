# Assessment Quiz 
 
 ## Test Automation

**Why would you want to automate a test?**

Test automation can be used to easily test functions of code or a program that need to be tested repeatedly.

**What tests are good candidates for automation? How do you decide what to automate?**

Tests that cover core features and functonality. If a program would break without a particular flow working, you might want to consider automating the testing around it.

**What type of things are not good to automate?**

Simple small things. Labels on a page, headers, etc.

**What criteria do you consider for automating a test?**

How important is this functionality? Will it benefit us t do more than a simple spot test?

**What are some advantages to writing automated tests that drive the UI of an application? What are some of the disadvantages?**
 
 You can get a better understanding of exactly what the user is going through when they use your application. However, you're also less likely to be testing the full code coverage and only testing the happy path.
 
**What is the Test Data Lifecycle? What is destructive testing?**



**Can you automate everything 100%? If no, what are the disadvantages of trying to automate everything?**

You could, but you shouldn't. Some things simply take up far more resources and time to automate than they would to manually check. Especially things that aren't business critical and only need checked once.


 ## OO Questions

**Explain what Object Oriented Programming.**

OOP is a type of programming in which classes have local variables which can be inherited by or from other classes. These objects can be used to chain bits of code. Think Body > Arm > Hand > Finger.
 
 **What is the difference between module and a class in Ruby?**

 **Explain the mix-in behavior in Ruby.**

 **Explain inheritance in Ruby.**

 **Why should you focus compesition over inheritance?**

 **What is the difference between a class and a instance method?**

 **When would you use an instance method vs a class method?**


 ## Watir / Page Object

**What is the page object pattern?**

**What is Watir?**

Watir is a webdriver that helps to automate webpages by acting as a user

**What are the advantages of using Page Object over using Watir?**

**Given a text box with an Id of "myTextBox", Show how you would enter text into the element using watir webdriver. How would you do it with page object?**


 ## Cucumber

**What is Cucumber?**

 **What is Gherkin? How does it relate to Acceptance Criteria?**
 
 Gerhkin is a set of commands (Given, When, Then), written in near english, that connect to cucumber and ruby code. Given it's nature, it makes it more readable for anyone to understand, and gives a good flow for acceptance testing.

**Define what is support, env.rb and hooks.rb ?**

 **What are the 2 files required to execute a Cucumber test scenario?**

**What is feature file in Cucumber? What does feature file consist of?**

A feature file consists of a scenario outline with various scenario tests, all with the intenet of testing a feature of your code. Usually written in Gherkin.

**What is the difference betweent imperative and Declaritive style Gherkin?**

