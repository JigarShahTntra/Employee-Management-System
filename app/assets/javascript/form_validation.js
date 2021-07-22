FormValidation = {
  validateForm: function () {
    $('#leave_request_type-form').validate({
      rules: {
        "leave_request_type[leaverequest_type]": {
          required: true
        }
      }
    });
  }
}
