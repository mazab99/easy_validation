import 'package:x_validation/src/x_validation_field_validator_core.dart';

class XValidationField {
  const XValidationField(
    this._validators, {
    bool displayMultipleMessages = false,
  }) : _displayMultipleMessages = displayMultipleMessages;

  final List<EasyFieldValidatorCore> _validators;

  final bool _displayMultipleMessages;

  String? validate(String field) {
    String? message;

    Iterable<EasyFieldValidatorCore> validatorList =
        _displayMultipleMessages ? _validators : _validators.reversed;

    for (EasyFieldValidatorCore validator in validatorList) {
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
