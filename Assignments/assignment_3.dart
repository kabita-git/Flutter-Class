import 'dart:io';
import 'dart:async';

// Task class
class Task {
  String title;
  bool isCompleted;

  Task(this.title) : isCompleted = false;
}

// This waits for 2 seconds (fake save)
Future<void> saveTasks() async {
  print("Saving...");
  await Future.delayed(Duration(seconds: 2));
  print("Saved!\n");
}

// Manager class
class TodoManager {
  List<Task> tasks = [];

  void addTask(String title) {
    tasks.add(Task(title));
    print("Task added!\n");
  }

  void completeTask(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks[index].isCompleted = true;
      print("Task completed!\n");
    } else {
      print("Invalid task number!\n");
    }
  }

  void listTasks() {
    print("\nYour Tasks:");
    if (tasks.isEmpty) {
      print("No tasks yet.\n");
      return;
    }

    for (int i = 0; i < tasks.length; i++) {
      String status = tasks[i].isCompleted ? "✔" : "✗";
      print("${i + 1}. $status ${tasks[i].title}");
    }
    print("");
  }
}

void main() async {
  TodoManager todo = TodoManager();

  while (true) {
    print("1. Add Task");
    print("2. Complete Task");
    print("3. Show Tasks");
    print("4. Save & Exit");

    stdout.write("Enter choice: ");
    String choice = stdin.readLineSync()!;

    if (choice == "1") {
      stdout.write("Enter task name: ");
      String title = stdin.readLineSync()!;
      todo.addTask(title);

    } else if (choice == "2") {
      todo.listTasks();
      stdout.write("Enter task number to complete: ");
      int num = int.parse(stdin.readLineSync()!);
      todo.completeTask(num - 1);

    } else if (choice == "3") {
      todo.listTasks();

    } else if (choice == "4") {
      await saveTasks();
      print("Goodbye!");
      break;

    } else {
      print("Wrong choice!\n");
    }
  }
}
