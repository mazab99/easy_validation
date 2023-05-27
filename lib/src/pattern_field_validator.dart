import 'package:form_validator/src/field_validator_core.dart';

class PatternFieldValidator extends FieldValidatorCore {
  final Pattern _pattern;

  final bool _caseSensitive;

  final bool _inverse;

  const PatternFieldValidator(
    this._pattern, {
    required super.errorMessage,
    bool caseSensitive = true,
    bool inverse = false,
  })  : _caseSensitive = caseSensitive,
        _inverse = inverse;

  @override
  bool isValid(String? field) {
    if (field == null || field.isEmpty) return true;

    bool hasMatch = RegExp(
      _pattern.toString(),
      caseSensitive: _caseSensitive,
    ).hasMatch(field);

    if (!_inverse) {
      return hasMatch;
    } else {
      return !hasMatch;
    }
  }
}
