import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import './count.dart';
// import '../controllers/countc.dart';
import '../routes/route_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  // final c = Get.put(CountC());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
        child: ElevatedButton(
            // onPressed: () =>
            //     Get.to(() => CountPage(), binding: BindingsBuilder(() {
            //       Get.put(CountC());
            //     })),
            onPressed: () => Get.toNamed(RouteName.count),
            child: const Text("next >>")),
      ),
    );
  }
}
