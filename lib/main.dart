//1. Tuliskan variabel Dart
//saya akan menuliskan variabel dart dan cara mencetaknya

void main(){
  // membuat var 
  // variabel teks = string
  String nama = "Dian";
  // variabel angka = int, double
  int umur = 23;
  double tinggi = 180.43;
  //variabel boolean = bool
  bool isMenikah = false;
  // membuat veriabel dgn kata kunci var
  var alamat = "Lombok, Indonesia";

  //mengubah var string
  nama = "Raditya";

  // mencetak variabel
  print("Nama saya $nama. Umur $umur tahun. Tinggi sekitar $tinggi cm.");
  print("Menikah: $isMenikah");
  print("Alamat: $alamat");

//2. Buat loop seperti gambar di kanan
	for(int i=0;i<=10;i++){
		print("*" * i);
	}

//3. Tulis code list, map dan set

//A. code List memakai Literal
	var listLiteral = [1,2,3,4,5];
	print(listLiteral);

//B. Map memakai Literal
	var ibuKota = {
		'United States America' : 'Washington, D.C.',
		'Canada' : 'Ottawa',
		'Japan' : 'Tokyo',
		'Korea' : 'Seoul',
	};

	print(ibuKota);

//C. Set memakai Literal
void main(List<String> arguments) {
	var setLiteral = {1,2,3};
	print(setLiteral);
}

//4. Buatlah kondisi dengan if-else 
//Jika ipk >=3,5 dan tidak pernah ada matkul yang mengulang hasilnya "cumlaude" jika <= 3,5 hasilnya "tidak cumlaude"

	var cumlaude = 3.5;
	var radityaIpk = 3.7;
	bool radityaMatkulMengulang = false;
  
	if(radityaIpk > cumlaude){
		if (radityaMatkulMengulang) {
			print('cumlaude');
		}
	} else{
		print('tidak cumlaude');
	}
}