import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:provider/provider.dart';

class PasswordProvider extends ChangeNotifier {
  bool _isPasswordVisible = true;
  bool get isPasswordVisible => _isPasswordVisible;
  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }
}

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PasswordProvider()),
      ],
      child: const InitialApp(),
    ),
  );
}

class InitialApp extends StatelessWidget {
  const InitialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Wrap(
                    children: [
                      ClipPath(
                        clipper: WaveClipperTwo(),
                        child: Container(
                          color: Colors.red,
                          height: MediaQuery.of(context).size.height / 2.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: kTabLabelPadding.left),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Form(
                      autovalidateMode: AutovalidateMode.always,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hai bang Bijan.',
                              style: Theme.of(context).textTheme.headline4),
                          const SizedBox(height: 12),
                          Text(
                            'Masuk ke akun atau membuat akun dulu, bang',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          SizedBox(height: kTabLabelPadding.left),
                          TextFormField(
                            cursorColor: Colors.red,
                            decoration: InputDecoration(
                              hintText: 'Alamat E-Mail',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            autofocus: true,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted:
                                (value) {}, // TODO: add node later
                            validator: (value) {
                              if (value!.length < 10) {
                                return 'Email setidaknya harus sepuluh karakter';
                              }

                              if (value.length > 3) {
                                return 'Username setidaknya harus tiga karakter';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            cursorColor: Colors.red,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  context
                                      .read<PasswordProvider>()
                                      .togglePasswordVisibility();
                                },
                                icon: Icon(context
                                        .watch<PasswordProvider>()
                                        .isPasswordVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                              hintText: 'Kata Sandi',
                              fillColor: Colors.red,
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            obscureText: context
                                .watch<PasswordProvider>()
                                .isPasswordVisible,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted:
                                (value) {}, // TODO: add node later
                            validator: (value) {
                              if (value!.length < 6) {
                                return 'password setidaknya harus enam karakter';
                              }

                              if (value.length > 3) {
                                return 'Username setidaknya harus tiga karakter';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: kTabLabelPadding.left),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                    ),
                                    child: const Text('Masuk'),
                                  ),
                                ),
                                Expanded(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text('Membuat akun'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
