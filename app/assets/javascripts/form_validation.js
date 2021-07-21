FormValidation = {
  validateForm: function () {
    $('#my_form').validate({
      errorElement: 'div',
      errorClass: 'is-invalid',

      rules: {
        "email": {
          required: true,
          email: true
        },
        "employee_code": {
          required: true,
          number: true
        },
      }
    });
  }
}

