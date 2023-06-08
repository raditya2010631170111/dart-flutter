class Anime {
	final String imageUrl;
	final String title;
	final double rating;
	final String rank;
	final String episode;
	final String aired;
	final String studios;
	final String synopsis;
	const Anime({
		required this.imageUrl,
		required this.title,
		required this.rating,
		required this.rank,
		required this.episode,
		required this.aired,
		required this.studios,
		required this.synopsis});
}

const List<Anime> listAni = [
	Anime(
		imageUrl: "assets/1_AOT",
		title: "Shingeki no Kyojin",
		rating: 8.53,
		rank: "Ranked #108",
		episode: "TV (25eps)",
		aired: "Spring 2013",
		studios: "Wit Studio",
		synopsis: "Berabad-abad yang lalu, umat manusia dibantai hingga hampir punah oleh makhluk humanoid mengerikan yang disebut Titans, memaksa manusia untuk bersembunyi dalam ketakutan di balik tembok konsentris yang sangat besar.  Apa yang membuat raksasa-raksasa ini benar-benar menakutkan adalah bahwa selera mereka terhadap daging manusia tidak lahir dari rasa lapar tetapi apa yang tampak karena kesenangan.  Untuk memastikan kelangsungan hidup mereka, sisa-sisa umat manusia mulai hidup dalam penghalang pertahanan, menghasilkan seratus tahun tanpa pertemuan titan tunggal.  Namun, ketenangan yang rapuh itu segera hancur ketika Titan kolosal berhasil menembus tembok luar yang seharusnya tidak dapat ditembus, menyalakan kembali perjuangan untuk bertahan hidup melawan kekejian pemakan manusia.",
	),
	Anime(
		imageUrl: "assets/2_DN",
		title: "Death Note",
		rating: 8.62,
		rank: "Ranked #76",
		episode: "TV (37eps)",
		aired: "Fall 2006",
		studios: "Mad House",
		synopsis: "Pembunuhan brutal, pencurian kecil-kecilan, dan kekerasan yang tidak masuk akal mencemari dunia manusia.  Sebaliknya, alam dewa kematian adalah sarang perjudian yang membosankan dan tidak berubah.  Siswa Jepang berusia 17 tahun yang cerdik, Light Yagami, dan dewa kematian yang sadis, Ryuk, memiliki satu keyakinan: dunia mereka busuk.",
	),
	Anime(
		imageUrl: "assets/3_FMAB",
		title: "Fullmetal Alchemist: Brotherhood",
		rating: 9.12,
		rank: "Ranked #1",
		episode: "TV (64eps)",
		aired: "Spring 2009",
		studios: "Bones",
		synopsis: "Setelah eksperimen alkimia yang mengerikan gagal di rumah tangga Elric, saudara laki-laki Edward dan Alphonse ditinggalkan dalam kenyataan baru yang membawa bencana.  Mengabaikan prinsip alkimia yang melarang transmutasi manusia, anak-anak lelaki itu berusaha menghidupkan kembali ibu mereka yang baru saja meninggal.  Sebaliknya, mereka menderita kerugian pribadi yang brutal: tubuh Alphonse hancur sementara Edward kehilangan satu kaki dan kemudian mengorbankan lengan untuk menjaga jiwa Alphonse di alam fisik dengan mengikatnya ke baju zirah raksasa.",
	),
	Anime(
		imageUrl: "assets/4_OPM",
		title: "One Punch Man",
		rating: 8.51,
		rank: "Ranked #117",
		episode: "TV (12eps)",
		aired: "Fall 2015",
		studios: "Madhouse",
		synopsis: "Saitama yang tampaknya tidak mengesankan memiliki hobi yang agak unik: menjadi pahlawan.  Untuk mengejar impian masa kecilnya, Saitama berlatih tanpa henti selama tiga tahun, kehilangan semua rambutnya dalam prosesnya.  Sekarang, Saitama sangat kuat, dia bisa mengalahkan musuh mana pun hanya dengan satu pukulan.  Namun, tidak memiliki seorang pun yang mampu menandingi kekuatannya telah membawa Saitama ke masalah yang tidak terduga—dia tidak lagi dapat menikmati sensasi pertempuran dan menjadi sangat bosan.",
	),
];