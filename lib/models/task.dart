class Task {
  String name;
  bool isDone;

  void toggleDone() {
    isDone = !isDone;
  }

  Task({this.name, this.isDone: false});
  
}
