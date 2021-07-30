FormValidation = {
  validateForm: function () {
    jQuery.validator.addMethod("lettersonly", function (value, element) {
      return this.optional(element) || /^[a-z]+$/g.test(value);
    }, " only allowed small letters,please!");

    $('#leave_request_type-form').validate({
      rules: {
        "leave_request_type[leaverequest_type]": {
          required: true,
          lettersonly: true,
          maxlength: 30
        }
      }
    });
  }
}
