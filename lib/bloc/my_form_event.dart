part of 'my_form_bloc.dart';

@immutable
abstract class MyFormEvent extends Equatable {
  const MyFormEvent();
}

class EmailChanged extends MyFormEvent {
  const EmailChanged({@required this.email});

  final String email;

  @override
  List<Object> get props => [email];
}

class PasswordChanged extends MyFormEvent {
  const PasswordChanged({@required this.password});

  final String password;

  @override
  List<Object> get props => [password];
}

abstract class FormSubmitted extends MyFormEvent {}
