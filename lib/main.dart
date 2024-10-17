import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helloworld/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Login Profile',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();
  final TextEditingController _skills1Controller = TextEditingController();
  final TextEditingController _skills2Controller = TextEditingController();
  final TextEditingController _aboutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Form Profile",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Silahkan untuk mengisi form profile anda",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: _usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukan username';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    hintText: 'Input nama anda',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 98, 98, 98),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _roleController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukan role';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Role',
                    hintText: 'Input role anda',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 98, 98, 98),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _skills1Controller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukan skill pertama';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Skill 1',
                    hintText: 'Input skill pertama',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 98, 98, 98),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _skills2Controller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukan skill kedua';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Skill 2',
                    hintText: 'Input skill kedua',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 98, 98, 98),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _aboutController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Masukan tentang diri anda';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'About',
                    hintText: 'Ceritakan tentang diri anda',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 98, 98, 98),
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                if (_usernameController.text.isEmpty ||
                    _roleController.text.isEmpty ||
                    _skills1Controller.text.isEmpty ||
                    _skills2Controller.text.isEmpty ||
                    _aboutController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                        'Isi form login dengan lengkap!',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(
                        username: _usernameController.text,
                        role: _roleController.text,
                        skills1: _skills1Controller.text,
                        skills2: _skills2Controller.text,
                        about: _aboutController.text,
                      ),
                    ),
                  );
                }
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.username,
    required this.role,
    required this.skills1,
    required this.skills2,
    required this.about,
  });

  final String username;
  final String role;
  final String skills1;
  final String skills2;
  final String about;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Profile(
            username: widget.username,
            role: widget.role,
            skills1: widget.skills1,
            skills2: widget.skills2,
            about: widget.about,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome back - ${widget.username}",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
