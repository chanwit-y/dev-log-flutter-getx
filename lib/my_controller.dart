import 'package:dev_log_flutter_getx/student.dart';
import 'package:get/get.dart';

class MyController extends GetxController {

  var student = Student(name: "Tom", age: 25).obs;

  void convertToUpperCase() {
   student.update((val) {
     if(val != null)
         val.name = val.name.toString().toUpperCase();
   });
  }

  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }

}