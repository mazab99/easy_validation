import 'package:x_validation/src/x_validation_field_validator_core.dart';

class EasyNumericFieldValidator extends EasyFieldValidatorCore {
  final num? min;

  final num? max;

  const EasyNumericFieldValidator({
    required super.errorMessage,
    this.min,
    this.max,
  });

  @override
  bool isValid(String? field) {
    if (field == null || field.isEmpty) return true;

    num? fieldNumber = num.tryParse(field);

    if (fieldNumber == null) return false;

    if (min != null && fieldNumber < min!) {
      return false;
    }

    if (max != null && fieldNumber > max!) {
      return false;
    }

    return true;
  }
}
