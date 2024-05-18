class kExceptions implements Exception {
  final String message;

  const kExceptions([this.message = 'An unknown exception occurred.']);

  factory kExceptions.fromCode(String code) {
    switch (code) {
      case 'email-already-in-use':
        return const kExceptions('Email already exists.');
      case 'invalid-email':
        return const kExceptions('Email is not valid or badly formatted.');
      case 'weak-password':
        return const kExceptions('Please enter a stronger password.');
      case 'user-disabled':
        return const kExceptions('This user has been disabled. Please contact support for help.');
      case 'user-not-found':
        return const kExceptions('User not found.');
      case 'wrong-password':
        return const kExceptions('Incorrect password, please try again.');
      case 'too-many-requests':
        return const kExceptions('Too many requests, service temporarily blocked.');
      case 'invalid-argument':
        return const kExceptions('Invalid argument provided.');
      case 'invalid-password':
        return const kExceptions('Invalid password provided.');
      case 'invalid-phone-number':
        return const kExceptions('Invalid phone number provided.');
      case 'operation-not-allowed':
        return const kExceptions('Operation not allowed.');
      case 'session-cookie-expired':
        return const kExceptions('Session cookie expired.');
      case 'uid-already-exists':
        return const kExceptions('User ID already exists.');
      default:
        return const kExceptions();
    }
  }
}
