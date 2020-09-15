class Validation {
  // singleton
  static final Validation _singleton = Validation._internal();
  factory Validation() => _singleton;
  Validation._internal();
  static Validation get shared => _singleton;

  bool isEmailValidation(String txtEmail) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(txtEmail);
  }

  bool isMobileNumerValide(String txtMobile) {
    return RegExp(r"^(?:[+0]9)?[0-9]{10}$").hasMatch(txtMobile);
  }
}
