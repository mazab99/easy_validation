import 'package:x_validation/src/x_validation_field_validator_core.dart';

class EasyDateFieldValidator extends EasyFieldValidatorCore {
  const EasyDateFieldValidator({
    required super.errorMessage,
    this.minDate,
    this.maxDate,
  });

  final DateTime? minDate;

  final DateTime? maxDate;

  @override
  bool isValid(String? field) {
    if (field == null || field.isEmpty) return true;

    DateTime? fieldDate = DateTime.tryParse(field);

    if (fieldDate == null) return false;

    if (minDate != null && fieldDate.isBefore(minDate!)) {
      return false;
    }

    if (maxDate != null && fieldDate.isAfter(maxDate!)) {
      return false;
    }

    return true;
  }
}
