extension InputExtensions on String {

  /// CHECK THE EMAIL
  bool isEmailValid() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this) && isNotEmpty;
  }

  /// CHECK THE PASSWORD
  bool isPasswordValid() {
    return length>= 6 && isNotEmpty;
  }

  /// CHECK THE FIELD
  bool isFieldValid() {
    return length>= 4 && isNotEmpty;
  }

}
