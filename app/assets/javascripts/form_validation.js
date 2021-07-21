FormValidation = {
  validateForm: function () {
    $('#role-form').validate({
      rules: {
        "role[name]": {
          required: true
        }
      }
    });
  }
}
