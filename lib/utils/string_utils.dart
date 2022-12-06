class StringUtils {
  static bool isEmptyOrNull(String? str) {
    return str == null || str.isEmpty;
  }

  static bool notNullOrEmpty(String? str) {
    return !isEmptyOrNull(str);
  }

  static bool equalIgnoreCase(String? s1, String? s2) {
    return (s1?.toLowerCase() == s2?.toLowerCase());
  }

  static bool isNumericString(String? str) {
    if (isEmptyOrNull(str)) {
      return false;
    }
    return double.tryParse(str!) != null;
  }

  static bool isAlphaNumericString(String? str) {
    if (isEmptyOrNull(str)) {
      return false;
    }
    var validChar = RegExp(r'^[a-zA-Z0-9]+$');
    return validChar.hasMatch(str!);
  }

  static bool isMinLength(String? str, int length) {
    if (isEmptyOrNull(str)) {
      return false;
    }
    return str!.length >= length;
  }

  static bool isMaxLength(String? str, int length) {
    if (isEmptyOrNull(str)) {
      return false;
    }
    return str!.length <= length;
  }

  static bool isPhoneNumber(String? str) {
    if (isEmptyOrNull(str)) {
      return false;
    }
    var validChar = RegExp("^[0-9]");
    return validChar.hasMatch(str!);
  }

  static bool isEmail(String? str) {
    if (isEmptyOrNull(str)) {
      return false;
    }
    var validChar = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return validChar.hasMatch(str!);
  }
}
