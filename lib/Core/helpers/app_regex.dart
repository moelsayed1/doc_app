class AppRegex {
  static bool isEmailValid(String email) {
    final emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    final passwordRegex = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
    return passwordRegex.hasMatch(password);
  }

  static bool isPasswordConfirmationValid(String password, String passwordConfirmation) {
    return password == passwordConfirmation;
  }

  static bool isPhoneNumberValid(String phoneNumber) {
    final phoneNumberRegex = RegExp(r'^(\+20|0020)?1[0-9]{9}$');
    return phoneNumberRegex.hasMatch(phoneNumber);
  }

  static bool hasLowerCase(String password) {
    final lowerCaseRegex = RegExp(r'[a-z]');
    return lowerCaseRegex.hasMatch(password);
  }

  static bool hasUpperCase(String password) {
    final upperCaseRegex = RegExp(r'[A-Z]');
    return upperCaseRegex.hasMatch(password);
  }

  static bool hasNumber(String password) {
    final numberRegex = RegExp(r'[0-9]');
    return numberRegex.hasMatch(password);
  }

  static bool hasSpecialCharacter(String password) {
    final specialCharacterRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    return specialCharacterRegex.hasMatch(password);
  }

  static bool hasMinLength(String password) {
    return password.length >= 8;
  }
}