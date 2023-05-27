import 'package:x_validation/src/x_validation_field_validator_core.dart';

class EasyLengthFieldValidator extends EasyFieldValidatorCore {
  final int? minLength;

  final int? maxLength;

  const EasyLengthFieldValidator({
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
