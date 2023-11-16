const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container_signup_signin');

function signUpValidateForm() {
	var x = document.forms["sign-up-form"]["sign-up-name"].value;
	if (x == "") {
		//   alert("'Name' can not be empty!!");
		asAlertMsg({
			type: "error",
			title: "Empty Field",
			message: "'Name' can not be empty!!",

			button: {
				title: "Close Button",
				bg: "Cancel Button"
			}
		});
		return false;
	}
	x = document.forms["sign-up-form"]["sign-up-email"].value;
	if (x == "") {
		//   alert("'Email' can not be empty!!");
		asAlertMsg({
			type: "error",
			title: "Empty Field",
			message: "'E-mail' can not be empty!!",

			button: {
				title: "Close Button",
				bg: "Cancel Button"
			}
		});
		return false;
	}
	x = document.forms["sign-up-form"]["sign-up-passwd"].value;
	if (x == "") {
		//   alert("'Password' can not be empty!!");
		asAlertMsg({
			type: "error",
			title: "Empty Field",
			message: "'Password' can not be empty!!",

			button: {
				title: "Close Button",
				bg: "Cancel Button"
			}
		});
		return false;
	}
}

function signInValidateForm() {

	x = document.forms["sign-in-form"]["sign-in-email"].value;
	if (x == "") {
		//   alert("'Email' can not be empty!!");
		asAlertMsg({
			type: "error",
			title: "Empty Field",
			message: "'E-mail' can not be empty!!",

			button: {
				title: "Close Button",
				bg: "Cancel Button"
			}
		});
		return false;
	}
	x = document.forms["sign-in-form"]["sign-in-passwd"].value;
	if (x == "") {
		//   alert("'Password' can not be empty!!");
		asAlertMsg({
			type: "error",
			title: "Empty Field",
			message: "'Password' can not be empty!!",

			button: {
				title: "Close Button",
				bg: "Cancel Button"
			}
		});
		return false;
	}
}

		function checkInput(input) {
			if(input.value === "") {
				input.classList.add('is-invalid');
				var errorMessage = input.name === 'email' ? "Email không được để trống" : "Password không được để trống";
				input.nextElementSibling.innerText = errorMessage;
			} else {
				input.classList.remove('is-invalid');
				input.nextElementSibling.innerText = '';
			}
		}
	
		document.addEventListener('DOMContentLoaded', (event) => {
		document.querySelector('input[name="email"]').addEventListener('blur', function() {
			checkInput(this);
		});
		document.querySelector('input[name="password"]').addEventListener('blur', function() {
			checkInput(this);
		});
		});
	
		function togglePassword(element) {
	
			var container = element.parentNode;
			var input = container.querySelector('input[type="password"], input[type="text"]');
			
			if (input.type === "password") {
				input.type = "text";
				element.classList.add('fa-eye-slash');
				element.classList.remove('fa-eye');
			} else {
				input.type = "password";
				element.classList.remove('fa-eye-slash');
				element.classList.add('fa-eye');
		}
	}

