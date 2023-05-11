var firstNameInput = document.getElementById("firstName");
var lastNameInput = document.getElementById("lastName");
var emailInput = document.getElementById("email");
var passwordInput = document.getElementById("password");

var firstNameError = document.getElementById("firstName-error");
var lastNameError = document.getElementById("lastName-error");
var emailError = document.getElementById("email-error");
var passwordError = document.getElementById("password-error");

firstNameInput.addEventListener("keyup", function() {
  if (firstNameInput.validity.valueMissing) {
    firstNameError.innerHTML = "First name is required";
  } else {
    firstNameError.innerHTML = "";
  }
});

lastNameInput.addEventListener("keyup", function() {
  if (lastNameInput.validity.valueMissing) {
    lastNameError.innerHTML = "Last name is required";
  } else {
    lastNameError.innerHTML = "";
  }
});

emailInput.addEventListener("keyup", function() {
  if (emailInput.validity.valueMissing) {
    emailError.innerHTML = "Email is required";
  } else if (!validateEmail(emailInput.value)) {
    emailError.innerHTML = "Invalid email address";
  } else {
    emailError.innerHTML = "";
  }
});

passwordInput.addEventListener("keyup", function() {
  if (passwordInput.validity.valueMissing) {
    passwordError.innerHTML = "Password is required";
  } else {
    passwordError.innerHTML = "";
  }
});

function validateEmail(email) {
  var re = /\S+@\S+\.\S+/;
  return re.test(email);
}

function validateForm() {
  if (firstNameInput.validity.valueMissing) {
    firstNameError.innerHTML = "First name is required";
    return false;
  }

  if (lastNameInput.validity.valueMissing) {
    lastNameError.innerHTML = "Last name is required";
    return false;
  }

  if (emailInput.validity.valueMissing) {
    emailError.innerHTML = "Email is required";
    return false;
  } else if (!validateEmail(emailInput.value)) {
    emailError.innerHTML = "Invalid email address";
    return false;
  }

  if (passwordInput.validity.valueMissing) {
    passwordError.innerHTML = "Password is required";
    return false;
  }

  return true;
}