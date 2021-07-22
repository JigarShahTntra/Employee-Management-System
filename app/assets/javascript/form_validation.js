FormValidation = {
  validateForm: function () {
    $('#leavetype-form').validate({
      rules: {
        "leavetype[name]": {
          required: true
        }
      }
    });
  }
};
