//Complete siguiendo las instrucciones del taller
var {Given} = require('cucumber');
var {When} = require('cucumber');
var {Then} = require('cucumber');
var {expect} = require('chai');

Given('I go to losestudiantes home screen', () => {
    browser.url('/');
    if($('button=Cerrar').isDisplayed()) {
        $('button=Cerrar').click();
    }
});

When('I open the login screen', () => {
    $('button=Ingresar').waitForExist(5000);
    $('button=Ingresar').waitForDisplayed(5000);
    $('button=Ingresar').click();
});

//------------------------------------------------------------Sign up ----------------------------------
When(/^I fill the sign up boxes (.*) (.*) (.*) and (.*)$/ , (name, last_name, email, password) => {
    var cajaSignUp = $('.cajaSignUp');
    var nameInput = cajaSignUp.$('input[name="nombre"]');
    nameInput.click();
    nameInput.keys(name);

    var lastNameInput = cajaSignUp.$('input[name="apellido"]');
    lastNameInput.click();
    lastNameInput.keys(last_name);

    var mailInput = cajaSignUp.$('input[name="correo"]');
    mailInput.click();
    mailInput.keys(email);

    var passwordInput = cajaSignUp.$('input[name="password"]');
    passwordInput.click();
    passwordInput.keys(password)
});

When(/^I (.*) accept the terms and Conditions$/ , (bool) => {
    var cajaSignUp = $('.cajaSignUp');
    if(bool !== 'not'){
        var terms = cajaSignUp.$('input[name="acepta"]');
        terms.click();
    }
});

Then('I await to see {string}', error => {
    if(error === 'x'){
        $('.has-error.has-feedback').waitForDisplayed(5000);
    }
    else if (error === ''){
        $('.has-error.has-feedback').waitForDisplayed(5000);
    }
    else{
        $('.aviso.alert.alert-danger').waitForDisplayed(5000);
        var alert = browser.$('.aviso.alert.alert-danger').getText();
        expect(alert).to.include(error);
    }
});

When('I try to sign up', () => {
    var cajaSignUp = $('.cajaSignUp');
    cajaSignUp.$('button=Registrarse').click();
});

//---------------------------------------------------------------Login-----------------------------------
When(/^I fill with (.*) and (.*)$/ , (email, password) => {
    var cajaLogIn = $('.cajaLogIn');

    var mailInput = cajaLogIn.$('input[name="correo"]');
    mailInput.click();
    mailInput.keys(email);

    var passwordInput = cajaLogIn.$('input[name="password"]');
    passwordInput.click();
    passwordInput.keys(password)
});

Then('I expect to see {string}', error => {
    if(error === "") {
        console.log("Exitoso");
    } else{
        $('.aviso.alert.alert-danger').waitForDisplayed(5000);
        var alertText = browser.$('.aviso.alert.alert-danger').getText();
        expect(alertText).to.include(error);
    }
});

When('I try to login', () => {
    var cajaLogIn = $('.cajaLogIn');
    cajaLogIn.$('button=Ingresar').click();
});

Then('I expect to not be able to login', () => {
    $('.aviso.alert.alert-danger').waitForDisplayed(5000);
});