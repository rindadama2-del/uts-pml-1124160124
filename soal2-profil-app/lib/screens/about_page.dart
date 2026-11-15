import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text(
            'Riwayat Pendidikan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Card(
            child: ListTile(
              leading: Icon(Icons.school, color: Colors.indigo),
              title: Text('S1 Software Engineering'),
              subtitle: Text('2024 - Sekarang'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.history_edu, color: Colors.indigo),
              title: Text('Sekolah Menengah Kejuruan'),
              subtitle: Text('Lulus 2024'),
            ),
          ),

          SizedBox(height: 24),

          Text(
            'Keahlian & Hobi',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Card(
            child: ListTile(
              leading: Icon(Icons.sports_tennis, color: Colors.indigo),
              title: Text('Bermain Badminton'),
              subtitle: Text('Olahraga rutin'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.android, color: Colors.indigo),
              title: Text('Software Development'),
              subtitle: Text('Tetarik membuat dan mengembangkan aplikasi'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.edit_note, color: Colors.indigo),
              title: Text('Menulis'),
              subtitle: Text('Menulis di waktu luang'),
            ),
          ),
        ],
      ),
    );
  }
}
