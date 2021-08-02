const endDateValidation = () => {
  const start = $("#startdate").val(), end = $("#enddate").val();
  const start_year = parseInt(start.substr(0, 4)), end_year = parseInt(end.substr(0, 4));
  const start_month = parseInt(start.substr(5, 2)), end_month = parseInt(end.substr(5, 2));
  const start_date = parseInt(start.substr(8, 2)), end_date = parseInt(end.substr(8, 2));
  if (start_year === end_year) {
    if (start_month === end_month) {
      if (start_date <= end_date) {
        return true;
      } else {
        return false;
      }
    } else if (start_month < end_month) {
      return true;
    } else {
      return false;
    }
  } else if (start_year < end_year) {
    return true;
  } else {
    return false;
  }
}
FormValidation = {
  validateForm: function () {
    jQuery.validator.addMethod("lettersonly", function (value, element) {
      return this.optional(element) || /^[a-z]+$/g.test(value);
    }, "Small-Letters only please");
    jQuery.validator.addMethod("endDateValidation", function () {
      return endDateValidation();
    }, "Invalid Date");
    $('#leavetype-form').validate({
      rules: {
        "leavetype[name]": {
          required: true,
          lettersonly: true,
          maxlength: 30
        }
      }
    });
    $('#leave-form').validate({
      rules: {
        "leave[name]": {
          required: true,
          lettersonly: true,
          maxlength: 30
        },
        "leave[startdate]": {
          required: true
        },
        "leave[enddate]": {
          required: true,
          endDateValidation: true
        },
        "leave[reason]": {
          required: true,
          lettersonly: true
        },
        "leave[notify]": {
          required: true,
          lettersonly: true
        }
      }
    });
  }
};