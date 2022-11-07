import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './page2.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Satu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => const PageDua(),
                  // ));
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //   builder: (context) => const PageDua(),
                  // ));

                  // ====== with getx
                  // navigator!.push(MaterialPageRoute(
                  //   builder: (_) => const PageDua(),
                  // ));

                  // Get.to(const PageDua(), arguments: "Dari Page 1");

                  var data = await Get.to(const PageDua());
                  print('hasil : $data');
                  // === pushReplacement : off
                  // Get.off(const PageDua());
                },
                child: const Text('Next Page >>'))
          ],
        ),
      ),
    );
  }
}
