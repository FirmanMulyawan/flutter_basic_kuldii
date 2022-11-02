import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../pages/add_player_page.dart';
import '../pages/detail_player_page.dart';

import '../providers/players.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isInit = true;

  @override
  void didChangeDependencies() {
    if (isInit) {
      Provider.of<Players>(context).initialData();
    }
    isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final allPlayerProvider = Provider.of<Players>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("ALL PLAYERS"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, AddPlayer.routeName);
            },
          ),
        ],
      ),
      body: (allPlayerProvider.jumlahPlayer == 0)
          ? SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "No Data",
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AddPlayer.routeName);
                    },
                    child: const Text(
                      "Add Player",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: allPlayerProvider.jumlahPlayer,
              itemBuilder: (context, index) {
                var id = allPlayerProvider.allPlayer[index].id;
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      DetailPlayer.routeName,
                      arguments: id,
                    );
                  },
                  // leading: CircleAvatar(
                  //   backgroundImage: NetworkImage(
                  //     allPlayerProvider.allPlayer[index].imageUrl,
                  //   ),
                  // ),

                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CachedNetworkImage(
                        imageUrl: allPlayerProvider.allPlayer[index].imageUrl,
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

                  title: Text(
                    allPlayerProvider.allPlayer[index].name,
                  ),
                  subtitle: Text(
                    DateFormat.yMMMMd()
                        .format(allPlayerProvider.allPlayer[index].createdAt),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      allPlayerProvider.deletePlayer(id).then(
                        (_) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Berhasil dihapus"),
                              duration: Duration(milliseconds: 500),
                            ),
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.delete),
                  ),
                );
              },
            ),
    );
  }
}
