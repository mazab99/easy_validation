import 'package:x_validation/src/x_validation_field_validator_core.dart';

class XValidationEmailFieldValidator extends EasyFieldValidatorCore {
  const XValidationEmailFieldValidator({required super.errorMessage});

  final Pattern _emailPattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  @override
  bool isValid(String? field) {
    if (field == null || field.isEmpty) return true;

    return RegExp(
      _emailPattern.toString(),
      caseSensitive: false,
    ).hasMatch(field);
  }
}
