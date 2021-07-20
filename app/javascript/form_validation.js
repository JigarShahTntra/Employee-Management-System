FormValidation = {
  validateForm: function () {
    $('#form').validate({
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