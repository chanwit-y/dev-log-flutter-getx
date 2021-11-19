import 'package:dev_log_flutter_getx/student.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // var student = Student();

  final student = Student(name: "Tom", age: 25).obs;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("State Management 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                // "Name is ${student.name.value}",
                "Name is ${student.value.name}",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  // student.name.value = student.name.value.toUpperCase();
                  student.update((val) {
                    if(val != null )
                      val.name = val.name.toString().toUpperCase(); 
                    // val.name = student.name.toString().toUpperCase();
                  });
                },
                child: Text("Upper"))
          ],
        ),
      ),
    ));
  }
}
