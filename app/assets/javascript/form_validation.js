FormValidation = {
  validateForm: function () {
    jQuery.validator.addMethod("lettersonly", function (value, element) {
      return this.optional(element) || /^[a-z]+$/g.test(value);
    }, "Small-Letters only please");

    $('#leavetype-form').validate({
      rules: {
        "leavetype[name]": {
          required: true,
          lettersonly: true,
          maxlength: 30
        }
      }
    });
  }
};
