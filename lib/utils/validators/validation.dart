class MyValidator {
  static String? validateEmptyText(String? value, String? fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'invalid Email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'password is required';
    }

    //min password lenght
    if (value.length < 6) {
      return 'password must be at least 6 characters long';
    }

    //check uppercase
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'password must contain at least one uppercase';
    }

    //check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'must conatain atleaset one number';
    }

    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'password must contain at least one special character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'invalid phone number format (10 digits required)';
    }

    return null;
  }
}
