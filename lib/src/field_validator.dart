import 'package:form_validator/src/field_validator_core.dart';

class FieldValidator {
  const FieldValidator(
    this._validators, {
    bool displayMultipleMessages = false,
  }) : _displayMultipleMessages = displayMultipleMessages;

  final List<FieldValidatorCore> _validators;

  final bool _displayMultipleMessages;

  String? validate(String field) {
    String? message;

    Iterable<FieldValidatorCore> validatorList =
        _displayMultipleMessages ? _validators : _validators.reversed;

    for (FieldValidatorCore validator in validatorList) {
      if (!validator.isValid(field)) {
        if (_displayMultipleMessages && message != null && message.isNotEmpty) {
          if (!message.contains(validator.errorMessage)) {
            message += "\n";
            message += validator.errorMessage;
          }
        } else {
          message = validator.errorMessage;
        }
      }
    }

    return message;
  }
}
