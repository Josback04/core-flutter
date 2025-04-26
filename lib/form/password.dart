import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

enum PasswordValidationError {
  invalid,
  empty,
  weak,
  noSame,
}

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty({String value = ''}) : super.dirty(value);

  @override
  PasswordValidationError? validator(String? value, {String? second}) {
    if (second != null && second != value) {
      return PasswordValidationError.noSame;
    }

    if (value!.isEmpty) PasswordValidationError.empty;

    if (value.length < 3) {
      return PasswordValidationError.weak;
    }
    return value.isNotEmpty == true ? null : PasswordValidationError.empty;
  }
}

extension PasswordValidationErrorX on PasswordValidationError {
  String text(BuildContext context) {
    switch (this) {
      case PasswordValidationError.invalid:
        return 'Veuillez entrer un mot de passe valide';
      case PasswordValidationError.empty:
        return 'Le mot de passe ne peut pas être vide';
      case PasswordValidationError.weak:
        return 'Le mot de passe est court';
      case PasswordValidationError.noSame:
        return 'Les mots de passe ne correspondent pas';
    }
  }
}
