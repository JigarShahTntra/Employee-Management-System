FormValidation = {
  validateForm: function () {
    $('#my_form').validate({
      errorElement: 'div',
      errorClass: "is-invalid",

      rules: {
        "name" :{
          required: true,
          name: true
        },
      },
    });
  }
}