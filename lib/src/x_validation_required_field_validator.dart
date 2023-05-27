import 'package:x_validation/src/x_validation_field_validator_core.dart';

class EasyRequiredFieldValidator extends EasyFieldValidatorCore {
  const EasyRequiredFieldValidator({required super.errorMessage});

  @override
  bool isValid(String? field) {
    return field != null && field.isNotEmpty;
  }
}
