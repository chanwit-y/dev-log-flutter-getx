import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Snackbar",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackbar"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Get.snackbar(
                    "Snackbar", "This will be snackbar message",
                    // colorText: Colors.purple,
                    animationDuration: Duration(milliseconds: 2000),
                    snackPosition: SnackPosition.BOTTOM,
                    titleText: Text(
                      "Another title",
                      style: TextStyle(color: Colors.teal),
                    ),
                    messageText: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          "Another Message",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(15),
                    // backgroundColor: Colors.teal[100],
                    borderRadius: 30,
                    maxWidth: 300,
                    backgroundGradient:
                        LinearGradient(colors: [Colors.red, Colors.green]),
                    borderColor: Colors.blueAccent,
                    borderWidth: 4,
                    boxShadows: [
                      BoxShadow(
                        color: Colors.red,
                        offset: Offset(5, 5),
                        spreadRadius: 0,
                        blurRadius: 20,
                      ),
                    ],
                    isDismissible: true,
                    dismissDirection: SnackDismissDirection.HORIZONTAL,
                    forwardAnimationCurve: Curves.bounceInOut,
                    duration: Duration(milliseconds: 8000),
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    // shouldIconPulse: false, // set icon not animation
                    // leftBarIndicatorColor: Colors.white,
                    mainButton: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Retry",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onTap: (val) {
                      print("Snackber click");
                    },
                    overlayBlur: 5,
                    // overlayColor: Colors.grey,
                    padding: EdgeInsets.all(20),
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.deepOrange,
                    progressIndicatorValueColor:
                        AlwaysStoppedAnimation<Color>(Colors.pink),
                    reverseAnimationCurve: Curves.bounceInOut,
                    snackbarStatus: (val) {
                      print(val);
                    },
                    // userInputForm: Form(
                    //   child: Row(
                    //     children: [Expanded(child: TextField())],
                    //   ),
                    // ),
                  );
                },
                child: Text("Show Snackbar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
