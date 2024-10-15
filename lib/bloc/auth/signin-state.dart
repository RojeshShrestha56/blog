import 'package:blog_app/modal/user.dart';

abstract class SigninState {}

class SigninInital extends SigninState {
  @override
  String toString() => "SigninInitilState";
}

class SigninEmailInProgress extends SigninState {
  @override
  String toString() => 'SigninEmailProgressState';
}

class SigninEmailFailed extends SigninState {
  String errMessage;
  SigninEmailFailed({required this.errMessage});

  @override
  String toString() => 'SigninEmailFailedState';
}

class SigninEmailCompleted extends SigninState {
  final User result;

  SigninEmailCompleted(this.result);

  @override
  String toString() => 'SigninEmailCompletedState';
}
