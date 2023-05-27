abstract class EasyFieldValidatorCore {
  const EasyFieldValidatorCore({required this.errorMessage});

  /// This validator's error message.
  final String errorMessage;

  /// Return true to validate the field.
  bool isValid(String? field);
}
