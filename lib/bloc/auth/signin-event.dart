abstract class SignInEvent {}

class SignInEmail extends SignInEvent {
  final String email;
  final String password;

  SignInEmail({required this.email, required this.password});

  @override
  String toString() => 'SignInEmail';
}
