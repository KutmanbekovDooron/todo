class Task{
  final String name;
  bool isDane;

  Task({required this.name, this.isDane = false});

  void toggleDane(){
    isDane = !isDane;
  }

}