import 'package:get/get.dart';

class ProductProvider extends GetConnect {
  String url =
      'https://get-cli-flutter-kuldii-project-default-rtdb.asia-southeast1.firebasedatabase.app/';

  Future<void> editProduct(String id, String name) async {
    final response = await patch('$url' + 'products/$id.json', {'name': name});
    return response.body;
  }

  Future<dynamic> postProduct(String name, String date) async {
    final response =
        await post('$url' + 'products.json', {'name': name, 'createdAt': date});
    return response.body;
  }

  Future<void> deleteProduct(String id) async =>
      await delete('$url' + 'products/$id.json');
}
