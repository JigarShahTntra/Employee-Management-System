FormValidation = {
  validateForm: function () {
    jQuery.validator.addMethod("lettersonly", function (value, element) {
      return this.optional(element) || /^[a-zA-Z ]+$/g.test(value);
    }, " Upper-Lower case and White space allowed only please");

    $('#notice-form').validate({
      rules: {
        "notice[title]": {
          required: true,
          lettersonly: true,
          maxlength: 150
        },
        "notice[description]": {
          required: true
        }
      }
    });
  }
}

