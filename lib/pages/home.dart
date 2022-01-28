import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/Controller.dart';
import 'details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Getx Test",
              style: TextStyle(fontSize: 22),
            ),
            Obx(
              () => Text(
                "Variable num is " + controller.count.toString(),
                style: TextStyle(fontSize: 22),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => DetailsPage());
                },
                child: Text("Details"))
          ],
        )),
      ),
    );
  }
}
