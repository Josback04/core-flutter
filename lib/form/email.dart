import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

enum EmailValidationError { invalid, empty }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');

  const Email.dirty({String value = ''}) : super.dirty(value);

  @override
  EmailValidationError? validator(String? value) {
    if (!EmailValidator.validate(value!)) return EmailValidationError.invalid;
    return value.isNotEmpty == true ? null : EmailValidationError.empty;
  }
}

extension EmailValidationErrorX on EmailValidationError {
  String text(BuildContext context) {
    switch (this) {
      case EmailValidationError.invalid:
        return 'Veuillez entrer un email valide';
      case EmailValidationError.empty:
        return 'Veuillez remplir ce champ';
    }
  }
}
