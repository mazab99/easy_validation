import 'package:form_validator/src/field_validator_core.dart';

class NumericFieldValidator extends FieldValidatorCore {
  final num? min;

  final num? max;

  const NumericFieldValidator({
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
