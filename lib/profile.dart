import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.username,
    required this.role,
    required this.skills1,
    required this.skills2,
    required this.about,
  }) : super(key: key);

  final String username;
  final String role;
  final String skills1;
  final String skills2;
  final String about;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/ramon.jpeg'),
            ),
            SizedBox(height: 16),
            Text(
              username,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              role,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Skills',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                children: [
                  SkillItem(skill: skills1),
                  SkillItem(skill: skills2),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'About',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                about,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String skill;

  const SkillItem({Key? key, required this.skill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        skill,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
