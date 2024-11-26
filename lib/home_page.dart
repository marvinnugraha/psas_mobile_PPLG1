import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final profil = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/profil.jpeg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Selamat datang',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final paragraf1 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Halo, nama saya Marvin Nugraha, Sering dipanggil apin (di rumah) dan pin (di sekolah).',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );
    
    final paragraf2 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Saat ini, saya adalah Siswa di salah satu Sekolah di Kabupaten Bandung.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final paragraf3 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Sedang menempuh pendidikan di SMK Marhas Magahayu mengambil Jurusan PPLG.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[profil, welcome, paragraf1,paragraf2,paragraf3],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}