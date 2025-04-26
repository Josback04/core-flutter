import 'package:formz/formz.dart';
import 'package:core/form/form.dart';

class LoginFormState with FormzMixin {
  const LoginFormState({
    this.password = const Password.pure(),
    this.email = const Email.pure(),
  });

  final Email email;
  final Password password;

  LoginFormState copyWith({
    Email? email,
    Password? password,
    Name? username,
  }) =>
      LoginFormState(
        email: email ?? this.email,
        password: password ?? this.password,
      );

  @override
  // TODO: implement inputs
  List<FormzInput<dynamic, dynamic>> get inputs => [
        email,
        password,
      ];
}

class SignFormState with FormzMixin {
  const SignFormState({
    this.password = const Password.pure(),
    this.email = const Email.pure(),
    this.username = const Name.pure(),
  });

  final Email email;
  final Password password;
  final Name username;

  SignFormState copyWith({
    Email? email,
    Password? password,
    Name? username,
  }) =>
      SignFormState(
        email: email ?? this.email,
        password: password ?? this.password,
        username: username ?? this.username,
      );

  @override
  // TODO: implement inputs
  List<FormzInput<dynamic, dynamic>> get inputs => [email, password, username];
}

class TeamForm with FormzMixin {
  const TeamForm({
    this.name = const Name.pure(),
    this.code = const Name.pure(),
    this.creationState = FormzSubmissionStatus.initial,
    this.joinState = FormzSubmissionStatus.initial,
    this.updateState = FormzSubmissionStatus.initial,
  });

  final Name name;
  final Name code;
  final FormzSubmissionStatus creationState;
  final FormzSubmissionStatus joinState;
  final FormzSubmissionStatus updateState;

  TeamForm copyWith({
    Name? name,
    Name? code,
    FormzSubmissionStatus? creationState,
    FormzSubmissionStatus? joinState,
    FormzSubmissionStatus? updateState,
  }) =>
      TeamForm(
        name: name ?? this.name,
        code: code ?? this.code,
        creationState: creationState ?? this.creationState,
        joinState: joinState ?? this.joinState,
        updateState: updateState ?? this.updateState,
      );

  @override
  // TODO: implement inputs
  List<FormzInput<dynamic, dynamic>> get inputs => [name, code];
}

class DocumentForm with FormzMixin {
  const DocumentForm({
    this.name = const Name.pure(),
    this.createState = FormzSubmissionStatus.initial,
    this.updateState = FormzSubmissionStatus.initial,
    this.addTagState = FormzSubmissionStatus.initial,
    this.removeTagState = FormzSubmissionStatus.initial,
    this.deleteState = FormzSubmissionStatus.initial,
  });

  final Name name;
  final FormzSubmissionStatus createState;
  final FormzSubmissionStatus updateState;
  final FormzSubmissionStatus addTagState;
  final FormzSubmissionStatus removeTagState;
  final FormzSubmissionStatus deleteState;

  DocumentForm copyWith({
    Name? name,
    FormzSubmissionStatus? createState,
    FormzSubmissionStatus? updateState,
    FormzSubmissionStatus? deleteState,
    FormzSubmissionStatus? addTagState,
    FormzSubmissionStatus? removeTagState,
  }) =>
      DocumentForm(
        name: name ?? this.name,
        createState: createState ?? this.createState,
        updateState: updateState ?? this.updateState,
        deleteState: deleteState ?? this.deleteState,
        addTagState: addTagState ?? this.addTagState,
        removeTagState: removeTagState ?? this.removeTagState,
      );

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [name];
}

class TagForm with FormzMixin {
  const TagForm({
    this.name = const Name.pure(),
    this.createState = FormzSubmissionStatus.initial,
    this.updateState = FormzSubmissionStatus.initial,
    this.deleteState = FormzSubmissionStatus.initial,
  });

  final Name name;
  final FormzSubmissionStatus createState;
  final FormzSubmissionStatus updateState;
  final FormzSubmissionStatus deleteState;

  TagForm copyWith({
    Name? name,
    FormzSubmissionStatus? createState,
    FormzSubmissionStatus? updateState,
    FormzSubmissionStatus? deleteState,
  }) =>
      TagForm(
        name: name ?? this.name,
        createState: createState ?? this.createState,
        updateState: updateState ?? this.updateState,
        deleteState: deleteState ?? this.deleteState,
      );

  @override
  List<FormzInput<dynamic, dynamic>> get inputs => [name];
}
