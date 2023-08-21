class Task {
  String id;
  String text;
  bool completed;

  Task({required this.id, required this.text, this.completed = false});

  static List<Task> taskList() {
    return [
      Task(id: '01', text: "Over the Horizon --> 01", completed: true),
      Task(id: '02', text: "Over the Horizon --> 02", completed: true),
      Task(id: '03', text: "Over the Horizon --> 03"),
      Task(id: '04', text: "Over the Horizon --> 04"),
      Task(id: '05', text: "Over the Horizon --> 05"),
      Task(id: '06', text: "Over the Horizon --> 06"),
      Task(id: '07', text: "Over the Horizon --> 07"),
    ];
  }
}
