import 'package:flutter/material.dart';

import '../models/profile.dart';
import '../widgets/info_tile.dart';

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
    github: 'rindadama-del',
    fotoAset: 'assets/images/foto_rinda.png',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
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
    );
  }
}
