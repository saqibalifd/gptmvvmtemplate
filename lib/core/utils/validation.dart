class ValidationUtils {
  static String? validateEmail(String email) {
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email)) {
      return "Enter a valid email";
    }
    return null;
  }

  static String? validatePassword(String password) {
    if (password.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null;
  }
}
