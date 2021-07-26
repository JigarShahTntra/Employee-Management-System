FormValidation = {
  validateForm: function () {
    jQuery.validator.addMethod("lettersonly", function (value, element) {
      return this.optional(element) || /^[a-z]+$/g.test(value);
    }, "Name allows lower case letters only");
    $('#my_form').validate({
      rules: {
        "department[name]": {
          required: true,
          lettersonly: true,
          maxlength: 30
        }
      }
    });
  }
};
