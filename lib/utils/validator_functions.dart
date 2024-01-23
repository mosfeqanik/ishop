import 'package:meta/meta.dart';

// Validates password format

// Validates email format
String? validateEmail(String value) {
  String? _msg;
  RegExp regex = new RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  if (value.isEmpty) {
    _msg = "Your username is required";
  } else if (!regex.hasMatch(value)) {
    _msg = "Please provide a valid emal address";
  }
  return _msg;
}

// Validates name format
bool? isNameFormatValid(String name) {
  String p = r"^[a-zA-Z ]*$";
  RegExp regExp = new RegExp(p);
  if (!regExp.hasMatch(name) || name == null) {
    return true;
  } else {
    return null;
  }
}

// // Validates email field
//   String emailValidator({
//     @required String email,
//   }) {
//     if (email.trim().isEmpty) {
//       return 'Please enter an email address.';
//     } else if (!isEmailFormatValid(email.trim())) {
//       return 'Please enter a valid email address.';
//     }
//     return null;
//   }

// Validates phone number field
String? phoneNumberValidator({required String phoneNumber}) {
  if (phoneNumber.trim().isEmpty) {
    return 'Please enter a phone number.';
  }
  if (phoneNumber.length < 10) {
    return 'Please enter minimum 10 digit.';
  }
  return null;
}

// Validates status field
String? statusValidator({required String status}) {
  if (status.trim().isEmpty) {
    return 'Please select stauts.';
  }
  return null;
}

// Validates status field
String? activityValidator({required String activity}) {
  if (activity.trim().isEmpty) {
    return 'Please select activity.';
  }
  return null;
}

// Validates message field
String? messageValidator({required String message}) {
  if (message.trim().isEmpty) {
    return 'Please enter message.';
  }
  return null;
}

// Validates activityDescription field
String? activityDescriptionValidator({required String message}) {
  if (message.trim().isEmpty) {
    return 'Please describe the activity.';
  }
  return null;
}

// Validates attachAFile field
String? attachAFileValidator({required String file}) {
  if (file.trim().isEmpty) {
    return 'Please attach a file.';
  }
  return null;
}

// Validates "current password" field
String? currentPasswordValidator({required String currentPassword}) {
  if (currentPassword.isEmpty) {
    return 'Please enter current password.';
  }
//  else if (!isPasswordLengthValid(currentPassword)) {
//    return ' Please use at least 8 characters for password.';
//  }
  return null;
}

// Validates name length
bool isNameLengthValid(String name) {
  if (name.trim().length >= 0) {
    return true;
  }
  return false;
}

// Validates first name
String? firstNameValidator({required String firstName}) {
  if (firstName.trim().isEmpty) {
    return 'Please enter first name.';
  } else if (!isNameLengthValid(firstName.trim())) {
    return 'Please use at least 3 characters for first name.';
  } else {
    return null;
  }
}

// Validates middle name
String? middleNameValidator({required String middleName}) {
  if (middleName.trim().isEmpty) {
    return 'Please enter middle name.';
  } else if (!isNameLengthValid(middleName.trim())) {
    return 'Please use at least 3 characters for middle name.';
  } else {
    return null;
  }
}

// Validates name
String? nameValidator({required String name}) {
  if (name.trim().isEmpty) {
    return 'Please enter name.';
  } else if (!isNameLengthValid(name.trim())) {
    return 'Please use at least 3 characters for first name.';
  } else {
    return null;
  }
}

// Validates last name
String? lastNameValidator({required String lastName}) {
  if (lastName.trim().isEmpty) {
    return 'Please enter last name.';
  } else if (!isNameLengthValid(lastName.trim())) {
    return 'Please use at least 3 characters for last name.';
  } else {
    return null;
  }
}

// Validates age
String? ageValidator({required String age}) {
  if (age.trim().isEmpty) {
    return 'Please enter age.';
  }
  return null;
}

String? validatorTitle(String value) {
  if (value.isEmpty) {
    return 'Please enter your title';
  }
}

String? validatorProjectTitle(String value) {
  if (value.isEmpty) {
    return 'Please enter project title';
  }
}

String? validatorBio(String value) {
  if (value.isEmpty) {
    return 'Please enter your bio';
  }
}

String? validatorLocation(String value) {
  if (value.isEmpty) {
    return 'Please enter your location';
  }
}

String? validatorName(String value) {
  if (value.isEmpty) {
    return 'Please enter your name';
  }
}

String? validatorSalary(String value) {
  if (value.isEmpty) {
    return 'Please enter your salary';
  }
}

String? validatorHeight(String value) {
  if (value.isEmpty) {
    return 'Please enter height';
  }
}

String? validatorWeight(String value) {
  if (value.isEmpty) {
    return 'Please enter weight';
  }
}

String? validatorPassword(String value) {
  if (value.isEmpty) {
    return 'Please enter your password';
  } else if (value.length < 8) {
    return 'Please minimum 8 character';
  }
}

String? validatorAwardTitle(String value) {
  if (value.isEmpty) {
    return 'Please enter award title';
  }
}

String? validatorAwardingInstitution(String value) {
  if (value.isEmpty) {
    return 'Please enter awarding institution';
  }
}
