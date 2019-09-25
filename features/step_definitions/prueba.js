//Definition of the constants that we are going to use to manage standardization and good practices 
const { Given, Then, When } = require('cucumber');
exports.APP_URL = 'http://newtours.demoaut.com/';

Given(/^ I am in Newtours page$/, () => {
    //Example using constant to calculate the queue time of an element. The constant "sumar", is a function created in the file helper.js 
    const waitMiliseconds = sumar(500,500);
    //You can also see that the URL works with a configuration variable, defined in the Config.js file.
    return client.url( APP_URL ).waitForElementVisible('body', waitMiliseconds);
});

// I fill login form with Email Address "([^"]*)" and Password "([^"]*)
this.Then(/^I fill login form with Email Address "([^"]*)" and Password "([^"]*)"$/, function (userName, userPassword) {
    this
      .useCss()
      .assert.elementPresent('input[name=userName]')
      .setValue('input[name=userName]', userName)
      .assert.elementPresent('input[name=password]')
      .setValue('input[name=password]', userPassword)
  }),

  // I click the "Sing-In" button
  this.When(/^I click the "([^"]*)" button$/, function (Name_Button) {

    if (Name_Button == "Sing-In") {
      this
        .useCss()
        .click('button[name=login]')
        .pause(5000)
    }
      })