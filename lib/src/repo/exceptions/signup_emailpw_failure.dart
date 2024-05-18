class signupwithEmailPasswordFailure {
  final String message;

  const signupwithEmailPasswordFailure([this.message = "An unknown error ocurred."]);

  factory signupwithEmailPasswordFailure.code(String code){
    switch(code){
      case 'weak-password':
        return const signupwithEmailPasswordFailure('Please enter a Strong password.');
      case 'invalid-email':
        return const signupwithEmailPasswordFailure('Email is not Valid or badly formatted.');
      case 'email-already-in-use':
        return const signupwithEmailPasswordFailure('Account already exists for this email.');
      case 'operation-not-allowed':
        return const signupwithEmailPasswordFailure('Operation Not allowed. Please contact Support.');
      case 'user-disabled':
        return const signupwithEmailPasswordFailure('This account has already been disabled. Please contact Support for help.');
      default:
        return const signupwithEmailPasswordFailure();
    }
  }
}