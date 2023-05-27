import '../form_validator.dart';

class ConditionFieldValidator extends FieldValidatorCore {
  final bool Function(String? field) condition;

  const ConditionFieldValidator(
    this.condition, {
    required super.errorMessage,
  });

  @override
  bool isValid(String? field) {
    if (field == null || field.isEmpty) return true;

    return condition.call(field);
  }
}
