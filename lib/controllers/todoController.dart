import 'package:get/get.dart';
import 'package:todo_todo/controllers/authController.dart';
import 'package:todo_todo/controllers/bindings/authBinding.dart';
import 'package:todo_todo/models/todo.dart';
import 'package:todo_todo/services/database.dart';

class TodoController extends GetxController {
  Rx<List<TodoModel>> todoList = Rx<List<TodoModel>>();

  List<TodoModel> get todos => todoList.value;

  @override
  void onInit() {
    String uid = Get.find<AuthController>().user.uid;
    todoList
        .bindStream(Database().todoStream(uid)); //stream coming from firebase
  }
}
