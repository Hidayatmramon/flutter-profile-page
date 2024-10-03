import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
              'Ramon Hidayat',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Fullstack Developer',
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
                  SkillItem(skill: 'Flutter'),
                  SkillItem(skill: 'Laravel'),
                  SkillItem(skill: 'Python'),
                  SkillItem(skill: 'Node.js'),
                  SkillItem(skill: 'MySQL'),
                  SkillItem(skill: 'RESTful APIs'),
                  SkillItem(skill: 'Git & GitHub'),
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
                'I am a Junior Full-Stack Developer with impressive skills in HTML, CSS, JavaScript, PHP, and C++.'
                'I am always interested in web technology and enjoy learning new programming languages and the latest technologies in web development.',
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.check, color: Colors.yellow, size: 20),
          SizedBox(width: 8),
          Text(
            skill,
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
