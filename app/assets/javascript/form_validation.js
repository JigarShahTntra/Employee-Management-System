
FormValidation = {
  validateForm: function () {
    $('#feedback-form').validate({
      rules: {
        "feedback[description]": {
          required: true
        }
      }
    });
  }
}

