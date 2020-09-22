Feature: Login into losestudiantes
  As an user I want to authenticate myself within losestudiantes website in order to rate teachers

  Scenario Outline: Register failed with wrong inputs

    Given I go to losestudiantes home screen
    When I open the login screen
    And I fill the sign up boxes with <name> <last_name> <email> and <password>
    And I <bool> accept the terms and Conditions
    And I try to sign up
    Then I await to see <error>

    Examples:
      | name             | last_name| email                 | password | error                    | bool |
      | miso             | miso     | miso@gmail.com        |          | "Ingresa una contraseña" |      |
      | miso             | miso     | miso@gmail.com        | 1234     | "La contraseña debe ser al menos de 8 caracteres" |      |
      | miso             | miso     |                       | 12345678 | "Ingresa tu correo"      |      |
      | miso             | miso     | asd                   | 12345678 | "Ingresa un correo valido"      |      |
      |                  | miso     | miso@gmail.com        | 12345678 | "x"                      |      |
      | miso             | miso     | miso@gmail.com        | 12345678 | ''                       |      |
      | miso             | miso     | miso@gmail.com        | 12345678 | "Debes aceptar los términos y condiciones" |   not   |