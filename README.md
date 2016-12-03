# CodingPiratesQA
### QA for CP internal software development

This is a project aimed at testing web apps, written for the organization Coding Pirates. Using BDD(Behavior Driven Development), requires the developer to write functionalities as a user story. For this project, user stories should be in the form: As a <type of user>, I want <some goal> so that <some reason>. Occasionally there will be functionalities that will require the user story to be in a different form. But for the most part, it’s possible to cut functionalities down into several smaller pieces, so that they will fit the form formerly mentioned.
For a short introduction to what BDD is all about, checkout the first 4 minutes of this video: <https://youtu.be/CfkbkCnIvIQ>
Other good sites to visit:
https://seleniumcucumber.info/
http://www.seleniumhq.org/

---
#### Testing forenings_medlemmer
##### Prerequisites:

* A running version of the members system.

For running tests in a headless browser.
* Docker 1.12.0 or higher

For running tests visually in FireFox.(This list isn't tested and is possible incomplete)
* FireFox 45.0.0 or higher.
* Ruby 2.3.x.
* Selenium for Ruby. 2.53.0 or higher. Version 3.0.0 is untested but should work.
* Cucumber 2.4.0 or higher.

After having installed Ruby, you can just run the following command to install Selenium, Cucumber and other goodies:
* gem install selenium-webdriver ci_reporter cucumber selenium rspec addressable win32-service selenium-cucumber clipboard syntax --no-rdoc --no-ri

##### Configuration:

Setting the address for the server to be tested, is done through the file `object_repository.rb`,
by setting an variable called `$address`. By default the address is set to ´127.0.0.1:8000´.
* `$address = ip|domain|hostname[:port]`

##### Running the tests:

To run in a headless browser: 
* Goto the folder `forenings_medlemmer`.
* Execute the file `run-tests.sh`.

To run in the foreground:
* Goto the folder `forenings_medlemmer`.
* Run `cucumber [path/to/my.feature]`.

After a test has run, there will be generated a HTML file, containing a report of the test. This report can be found in the folder `reports`. After each run, the report will be overwritten. There will also be taken screenshots at each step where the test has failed. These screenshots are saved to the folder `screenshots` and will not be deleted automatically.
