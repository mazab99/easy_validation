import 'package:form_validator/src/field_validator_core.dart';

class RequiredFieldValidator extends FieldValidatorCore {
  const RequiredFieldValidator({required super.errorMessage});

  @override
  bool isValid(String? field) {
    return field != null && field.isNotEmpty;
  }
}
