import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugas_4/detail_page.dart';
import 'package:tugas_4/myanimelist_model.dart';

//P2 Stateless
class ListPage extends StatelessWidget {
  const ListPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Top Anime')),
      body: SafeArea(
          child: ListView.builder(
        itemCount: listAni.length,
        itemBuilder: (context, index) {
          final item = listAni[index];
          return ListTile(
            title: Text(item.title),
            subtitle: Text(item.episode),
            leading: CircleAvatar(backgroundImage: AssetImage(item.imageUrl)),
            trailing: Text("${item.rating}"),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(anime: item),)),
          );
        },
          )
      ),
    );
  }
}
