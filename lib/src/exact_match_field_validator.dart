import 'package:form_validator/src/field_validator_core.dart';

class ExactMatchFieldValidator extends FieldValidatorCore {
  final String _text;
  final bool _caseSensitive;

  const ExactMatchFieldValidator(
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
