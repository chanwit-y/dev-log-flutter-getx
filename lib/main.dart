import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dialog"),
        ),
        body: Center(
          child: TextButton(
            child: Text("Show dialog"),
            onPressed: () {
              // Get.defaultDialog();
              Get.defaultDialog(
                title: "Dialog Title",
                titleStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  // color: Colors.white,
                ),
                middleText: "This is middle text",
                middleTextStyle: TextStyle(
                  fontSize: 20,
                  // color: Colors.white,
                ),
                // backgroundColor: Colors.lightBlue,
                radius: 10,
                content: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      CircularProgressIndicator(
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(child: Text("Data Loading"))
                    ],
                  ),
                ),
                textCancel: "Cancel",
                cancelTextColor: Colors.red,
                textConfirm: "Confirm",
                confirmTextColor: Colors.green,
                onCancel: () {
                  Get.back();
                },
                onConfirm: () {
                  Get.back();
                },
                buttonColor: Colors.indigo,
                cancel: TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("Close"),
                ),
                confirm: ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text("Confirm"),
                ),
                actions: [
                  ElevatedButton(onPressed: () {}, child: Text("Action-1")),
                  // ElevatedButton(onPressed: () {}, child: Text("Action-2"))
                ],
                barrierDismissible: false,
              );
            },
          ),
        ),
      ),
    );
  }
}
