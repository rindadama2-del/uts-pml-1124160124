import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Rinda',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Mahasiswa'),
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: const Text('HALOO')));
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: Icon(Icons.person, size: 30, color: Colors.teal),
                      ),
                      const SizedBox(height: 16),

                      Text(
                        'Rinda Danar Madanti',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),

                      const SizedBox(height: 8),

                      Text(
                        '1124160124',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),

                      const SizedBox(height: 8),

                      Text(
                        'Software Engineering',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),

                      const SizedBox(height: 18),

                      Card(
                        child: Column(
                          children: [
                            const ListTile(title: Text('Kontak')),

                            InfoTile(
                              icon: Icons.email,
                              label: 'Email',
                              value: 'rinda@gmail.com',
                            ),

                            InfoTile(
                              icon: Icons.phone,
                              label: 'Nomor HP',
                              value: '0812345678',
                            ),

                            InfoTile(
                              icon: Icons.school,
                              label: 'Kelas',
                              value: 'SE-1P24',
                            ),

                            InfoTile(
                              icon: Icons.code,
                              label: 'GitHub',
                              value: 'github.com/rindadama-del',
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      Card(
                        child: Column(
                          children: [
                            const ListTile(title: Text('Keahlian/Hobi')),

                            InfoTile(
                              icon: Icons.sports_volleyball,
                              label: 'Hobi',
                              value: 'Voli',
                            ),

                            InfoTile(
                              icon: Icons.code,
                              label: 'Programming',
                              value: 'Flutter & Dart',
                            ),

                            InfoTile(
                              icon: Icons.design_services,
                              label: 'Desain',
                              value: 'UI/UX',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Terima kasih telah melihat profil saya'),
            ),
          );
        },
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
