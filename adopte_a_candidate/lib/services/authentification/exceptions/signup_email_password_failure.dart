class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message = "An unknown error occured."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch(code){
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure('Email is invalid.');
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordFailure('Email is already used');
      default: return const SignUpWithEmailAndPasswordFailure();
    }
  }
}
