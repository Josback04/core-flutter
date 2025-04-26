import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

enum NameValidationError {
  invalid,
  empty,
  phoneNumber,
  negativeNumber,
}

class Name extends FormzInput<String, NameValidationError> {
  const Name.pure() : super.pure('');

  const Name.dirty({String value = ''}) : super.dirty(value);

  @override
  NameValidationError? validator(
    String? value, {
    bool? checkPhoneNumber,
  }) {
    if ((checkPhoneNumber ?? false) && (value ?? '').length != 9) {
      return NameValidationError.phoneNumber;
    }
    final number = double.tryParse(value ?? '');
    if (number != null && number < 0) {
      return NameValidationError.negativeNumber;
    }

    return value!.isNotEmpty == true ? null : NameValidationError.empty;
  }
}

extension NameValidationErrorX on NameValidationError {
  String text(BuildContext context) {
    switch (this) {
      case NameValidationError.invalid:
        return 'Nom invalide';
      case NameValidationError.empty:
        return 'Ce champ ne peut pas être vide';
      case NameValidationError.phoneNumber:
        return 'Veuillez entrer un numéro de téléphone valide à 9 chiffres';

      case NameValidationError.negativeNumber:
        return 'Ce champ ne peut pas être négatif';
    }
  }
}
