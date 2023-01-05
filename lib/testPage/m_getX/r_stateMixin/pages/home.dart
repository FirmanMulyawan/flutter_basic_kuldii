import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/myc.dart';

// class HomePageStateMixin extends StatelessWidget {
class HomePageStateMixin extends GetView<MyC> {
  const HomePageStateMixin({super.key});
  // final myC = Get.find<MyC>();

  @override
  Widget build(BuildContext context) {
    // final myC = Get.find<MyC>();

    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      // body: Center(
      //   child: Obx(() => Text(
      //         // '${myC.count}',
      //         // '${controller.count}',
      //         style: const TextStyle(fontSize: 25),
      //       )),
      // ),
      body: Center(
        // controller.obx dari StateMixin
        child: controller.obx(
            (state) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('id : ${state!['id']}'),
                    Text('Nama : ${state['first_name'] + state['last_name']}'),
                    Text('Email : ${state['email']}'),
                    Image.network('${state['avatar']}')
                  ],
                ),
            onLoading: const Text('Loading...'),
            onEmpty: const Text('Belum ada data'),
            onError: ((error) => Text(error.toString()))),
      ),
      floatingActionButton: FloatingActionButton(
          // onPressed: () => myC.add()
          // onPressed: () => controller.add(),
          onPressed: () => controller.getData()),
    );
  }
}
