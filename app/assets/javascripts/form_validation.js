FormValidation = {
  validateForm: function () {
    jQuery.validator.addMethod("lettersonly", function(value, element) {
      return this.optional(element) || /^[a-z]+$/g.test(value);
    }, "Small Letters only please");      
    $('#role-form').validate({
      rules: {
        "role[name]": {
          required: true,
          lettersonly: true
        }
      }  
    });
  }
}

