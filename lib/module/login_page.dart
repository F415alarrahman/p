import 'package:classflutter/module/assets_path.dart';
import 'package:classflutter/module/home_page.dart';
import 'package:classflutter/module/login_notifer.dart';
import 'package:classflutter/module/register_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginNotifer(context: context),
      child: Consumer<LoginNotifer>(
        builder: (context, value, child) => SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            body: Form(
              key: value.keyfrom,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Column(
                              children: [
                                Image.asset(
                                  ImageAssets.google,
                                  height: 64,
                                  width: 64,
                                ),
                                Text(
                                  'Login Page',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Silahkan Lakukan Register Untuk Masuk Aplikasi',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 32),
                          // Section: Email Field
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email'),
                              SizedBox(height: 8),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Masukkan Email',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                validator: (e) {
                                  if (e!.isEmpty) {
                                    return "Email Wajib Diisi";
                                  }
                                  return null; // Mengembalikan null jika valid
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 16),

                          // Section: Password Field
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Password'),
                              SizedBox(height: 8),
                              TextFormField(
                                obscureText:
                                    true, // Menyembunyikan input password
                                decoration: InputDecoration(
                                  labelText: 'Masukkan Password',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                validator: (e) {
                                  if (e!.isEmpty) {
                                    return "Password Wajib Diisi";
                                  }
                                  return null; // Mengembalikan null jika valid
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 8),

                          // Section: Forgot Password
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {}, child: Text('Lupa Pasword'))
                            ],
                          ),
                          SizedBox(height: 16),

                          // Section: Sign Up Button
                          SizedBox(
                            width: double.infinity,
                            height: 56,
                            child: ElevatedButton(
                              onPressed: () {
                                if (value.keyfrom.currentState!.validate()) {
                                  // Memanggil validate sebelum menavigasi
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              child: Text(
                                'Masuk',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),

                          // Section: Register Option
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Belum punya akun? '),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => RegisterPage()),
                                    );
                                  },
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Google Account Option
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white,
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  ImageAssets.google,
                                  height: 24,
                                ),
                                const Center(
                                  child: Text("Google akun"),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
