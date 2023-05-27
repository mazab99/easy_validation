import 'package:x_validation/src/x_validation_field_validator_core.dart';

class XValidationExactMatchFieldValidator extends EasyFieldValidatorCore {
  final String _text;
  final bool _caseSensitive;

  const XValidationExactMatchFieldValidator(
    this._text, {
    required super.errorMessage,
    bool caseSensitive = true,
  }) : _caseSensitive = caseSensitive;

  @override
  bool isValid(String? field) {
    if (field == null || field.isEmpty) return true;

    if (!_caseSensitive) return _text.toLowerCase() == field.toLowerCase();

    return _text == field;
  }
}
