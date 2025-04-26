class Failure {
  Failure(this.title, this.message);

  final String title;

  final String message;

  @override
  String toString() {
    return 'Failure{title: $title, message: $message}';
  }
}
