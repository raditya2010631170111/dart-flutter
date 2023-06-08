import 'package:flutter/material.dart';
import 'package:tugas_4/myanimelist_model.dart';

class DetailPage extends StatelessWidget {
	final Anime anime;
	const DetailPage({super.key, required this.anime});
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: SafeArea(
				child: Column(
					children: [
						Text(anime.imageUrl),
						Text(anime.title),
						const SizedBox(
							height: 16,
						), 
						Text("${anime.rating}"),
						Text(anime.rank,),
						Text(anime.episode,),
						Text(anime.aired,),
						Text(anime.studios,),
						Text(anime.synopsis,),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image.asset("assets/icon_button_back.png"),
            ),
					],
				),
			),
		);
	}
}
