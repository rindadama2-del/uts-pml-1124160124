import 'package:flutter/material.dart';

import 'package:soal2_profil_app/models/profile.dart';
import 'package:soal2_profil_app/widgets/info_tile.dart';
import 'about_page.dart';
import 'edit_profile_page.dart';
import 'package:soal2_profil_app/main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Profile userProfile = Profile(
    nama: 'Rinda Danar Madanti',
    nim: '1124160124',
    prodi: 'Software Engineering',
    kelas: 'SE-1P24',
    email: 'rinda@gmail.com',
    noHp: '0812345678',
    github: 'rindadama2-del',
    fotoAset: 'assets/images/foto_rinda.png',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      EditProfilePage(currentProfile: userProfile),
                ),
              );
              if (!context.mounted) return;

              if (result != null) {
                setState(() {
                  userProfile = result as Profile;
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Profil berhasil diperbarui')),
                );
              }
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(userProfile.nama),
              accountEmail: Text(userProfile.email),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(userProfile.fotoAset),
              ),
              decoration: const BoxDecoration(color: Colors.indigo),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profil'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Tentang Saya'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),
            const Divider(),
            ValueListenableBuilder<ThemeMode>(
              valueListenable: themeNotifier,
              builder: (context, mode, child) {
                return SwitchListTile(
                  title: const Text('Mode Gelap'),
                  secondary: const Icon(Icons.dark_mode),
                  value: mode == ThemeMode.dark,
                  onChanged: (value) {
                    themeNotifier.value = value
                        ? ThemeMode.dark
                        : ThemeMode.light;
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(userProfile.fotoAset),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    userProfile.nama,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${userProfile.nim} - ${userProfile.prodi}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Kelas: ${userProfile.kelas}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Mahasiswa Software Engineering',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            InfoTile(
              icon: Icons.email,
              title: 'Email',
              content: userProfile.email,
            ),
            InfoTile(
              icon: Icons.phone,
              title: 'Nomor HP',
              content: userProfile.noHp,
            ),
            InfoTile(
              icon: Icons.code,
              title: 'Akun GitHub',
              content: userProfile.github,
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.indigo,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Tentang Saya',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutPage()),
            );
          }
        },
      ),
    );
  }
}
