import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhammadiqbalzamzami_1915016122_projekdikoding/counter_controller.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wind Breaker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final CounterController myCounterController = Get.put(CounterController());
  final TextEditingController myNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
        ),
        flexibleSpace: Obx(
          () => Container(
            color: myCounterController.switchValue.value
                ? Color.fromARGB(255, 255, 255, 255)
                : Colors.grey,
          ),
        ),
        actions: [
          Obx(
            () => Switch(
              value: myCounterController.switchValue.value,
              onChanged: (newValue) {
                myCounterController.switchValue.value = newValue;
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Obx(
          () => Container(
            width: MediaQuery.of(context).size.width,
            color: myCounterController.switchValue.value
                ? Colors.grey
                : Color.fromARGB(255, 255, 255, 255),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Schedule',
                ),
                Obx(
                  () => Text(
                    '${myCounterController.count}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: myCounterController.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
