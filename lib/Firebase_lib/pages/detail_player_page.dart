import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../providers/players.dart';

class DetailPlayer extends StatelessWidget {
  static const routeName = "/detail-player";

  const DetailPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    final players = Provider.of<Players>(context, listen: false);
    final playerId = ModalRoute.of(context)?.settings.arguments as String;
    final selectPLayer = players.selectById(playerId);
    final TextEditingController imageController =
        TextEditingController(text: selectPLayer.imageUrl);
    final TextEditingController nameController =
        TextEditingController(text: selectPLayer.name);
    final TextEditingController positionController =
        TextEditingController(text: selectPLayer.position);

    return Scaffold(
      appBar: AppBar(
        title: const Text("DETAIL PLAYER"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(imageController.text),
                      ),
                    ),
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: imageController.text,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) => SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.network(
                            "https://www.uclg-planning.org/sites/default/files/styles/featured_home_left/public/no-user-image-square.jpg"),
                      ),
                    ),
                  ),
                ),
                TextFormField(
                  autocorrect: false,
                  autofocus: true,
                  decoration: const InputDecoration(labelText: "Nama"),
                  textInputAction: TextInputAction.next,
                  controller: nameController,
                ),
                TextFormField(
                  autocorrect: false,
                  decoration: const InputDecoration(labelText: "Posisi"),
                  textInputAction: TextInputAction.next,
                  controller: positionController,
                ),
                TextFormField(
                  autocorrect: false,
                  decoration: const InputDecoration(labelText: "Image URL"),
                  textInputAction: TextInputAction.done,
                  controller: imageController,
                  onEditingComplete: () {
                    players
                        .editPlayer(
                      playerId,
                      nameController.text,
                      positionController.text,
                      imageController.text,
                    )
                        .then((value) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Berhasil diubah"),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      Navigator.pop(context);
                    });
                  },
                ),
                const SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  child: OutlinedButton(
                    onPressed: () {
                      players
                          .editPlayer(
                        playerId,
                        nameController.text,
                        positionController.text,
                        imageController.text,
                      )
                          .then((value) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Berhasil diubah"),
                            duration: Duration(seconds: 2),
                          ),
                        );
                        Navigator.pop(context);
                      });
                    },
                    child: const Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
