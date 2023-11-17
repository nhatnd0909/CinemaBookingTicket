function checkInput(input) {
			let errorMessage;
			switch (input.name) {
				case 'name':
				errorMessage = "Tên không được để trống";
				break;
				case 'email':
				errorMessage = "Email không được để trống";
				break;
				case 'password':
				errorMessage = "Password không được để trống";
				break;
				case 'rePassword':
				errorMessage = "Re-Password không được để trống";
				break;
				default:
				errorMessage = "Thông tin này không được để trống";
			}

			var feedbackElement = input.nextElementSibling.classList.contains('toggle-password') ?
									input.nextElementSibling.nextElementSibling : input.nextElementSibling;
			
			if (input.value === "") {
				input.classList.add('is-invalid');
				feedbackElement.innerText = errorMessage;
				feedbackElement.style.display = 'block';
			} else {
				input.classList.remove('is-invalid');
				feedbackElement.innerText = '';
				feedbackElement.style.display = 'none';
			}
}
document.addEventListener('DOMContentLoaded', (event) => {
document.querySelectorAll('.form-control').forEach(inputElement => {
			inputElement.addEventListener('blur', function() {
			checkInput(this);
			});
	});
});
function togglePassword(icon) {
  
			var inputWrapper = icon.parentElement;

			var passwordInput = inputWrapper.querySelector('input[type="password"], input[type="text"]');
			
			if (passwordInput.type === "password") {
				passwordInput.type = "text";
				icon.classList.remove("fa-eye");
				icon.classList.add("fa-eye-slash");
			} else {
				passwordInput.type = "password";
				icon.classList.remove("fa-eye-slash");
				icon.classList.add("fa-eye");
			}
        }