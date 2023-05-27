import 'package:form_validator/src/field_validator_core.dart';

class EmailFieldValidator extends FieldValidatorCore {
  const EmailFieldValidator({required super.errorMessage});

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
