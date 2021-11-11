import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Bottom Sheet",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Sheet"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Bottom Sheet"),
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.wb_sunny_outlined,
                              color: Colors.grey,
                            ),
                            title: Text(
                              "Light Theme",
                              style: TextStyle(color: Colors.grey),
                            ),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                              Get.back();
                            },
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.wb_sunny,
                              color: Colors.grey,
                            ),
                            title: Text(
                              "Dark Theme",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                              Get.back();
                            },
                          ),
                        ],
                      ),
                    ),
                    barrierColor: Colors.grey.withOpacity(.8),
                    backgroundColor: Colors.white,
                    isDismissible: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(
                        color:  Colors.red,
                        style: BorderStyle.solid,
                        width: 2,
                      )
                    ),
                    enableDrag: true,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
