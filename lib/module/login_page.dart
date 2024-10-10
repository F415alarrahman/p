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
                                  ImageAssets.spotify,
                                  height: 256,
                                  width: 256,
                                ),
                                Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Please log in to access the application',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 32),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email'),
                              SizedBox(height: 8),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Enter Email',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                validator: (e) {
                                  if (e!.isEmpty) {
                                    return "Please enter your email (required)";
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
                                  labelText: 'Enter Password',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                validator: (e) {
                                  if (e!.isEmpty) {
                                    return "Please enter your password (required)";
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
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(color: Colors.black),
                                  ))
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
                                backgroundColor: Colors.green,
                              ),
                              child: Text(
                                'Login',
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
                                Text("Don't have an account?"),
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
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            child: Container(
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
                                    child: Text("Sign in with Google"),
                                  )
                                ],
                              ),
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
