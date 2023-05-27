import '../x_validation.dart';

class XValidationConditionFieldValidator extends EasyFieldValidatorCore {
  final bool Function(String? field) condition;

  const XValidationConditionFieldValidator(
    this.condition, {
    required super.errorMessage,
  });

  @override
  bool isValid(String? field) {
    if (field == null || field.isEmpty) return true;

    return condition.call(field);
  }
}
