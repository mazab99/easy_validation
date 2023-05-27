import 'package:form_validator/src/field_validator_core.dart';

class LengthFieldValidator extends FieldValidatorCore {
  final int? minLength;

  final int? maxLength;

  const LengthFieldValidator({
    required super.errorMessage,
    this.minLength,
    this.maxLength,
  });

  @override
  bool isValid(String? field) {
    if (field == null || field.isEmpty) return true;

    if (minLength != null && field.length < minLength!) {
      return false;
    }

    if (maxLength != null && field.length > maxLength!) {
      return false;
    }

    return true;
  }
}
