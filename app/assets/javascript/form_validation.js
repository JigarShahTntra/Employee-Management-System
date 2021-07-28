FormValidation = {
  validateForm: function () {
    jQuery.validator.addMethod("lettersonly", function (value, element) {
      return this.optional(element) || /^[a-z]+$/g.test(value);
    }, "lowercase and Letters only please");
    jQuery.validator.addMethod('starttime', function(value, element, param) {
      return value == '' || value.match(/^([01][0-9]|2[0-3]):[0-5][0-9]$/);
          },'Enter a valid time: hh:mm');
    jQuery.validator.addMethod('endtime', function(value, element, param) {
    return value == '' || value.match(/^([01][0-9]|2[0-3]):[0-5][0-9]$/);
    },'Enter a valid time: hh:mm');
    $('#regularization-form').validate({
      rules: {
        "regularization[reason]": {
          required: true,
          lettersonly: true,
          maxlength: 30,
          minlength: 2 
        },
        "regularization[start_hour]" :{
          required: true,
          starttime: true
                  },
        "regularization[end_hour]" :{
         required: true,
         endtime: true
                            },
      }
    });
  }
};