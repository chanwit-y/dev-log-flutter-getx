import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "This is Home Screen",
                style: TextStyle(
                  color: Colors.purpleAccent,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Next screen")),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Back to Main"))
            ],
          ),
        ),
    );
  }
}
