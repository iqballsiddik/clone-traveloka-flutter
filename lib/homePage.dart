import 'package:clone_traveloka/page/awal.dart';
import 'package:clone_traveloka/page/inbox.dart';
import 'package:clone_traveloka/page/pesanan.dart';
import 'package:clone_traveloka/page/profile.dart';
import 'package:clone_traveloka/page/simpan.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// Ketika pertama kali app di buka 
  /// maka defaul pertama di jalankan button  yang di tuju
  int _selectedIndex = 0;
  final _layoutPage = [
    Awal(),
    Simpan(),
    Pesanan(),
    Inbox(),
    Profile(),
  ];

  /// ketika di prees button dia akan pindah ke mana
  void _onTabItem(int index){
    setState(() {
      // ketika button lain di klik ini akan mengecek index ke berapa
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // jadi tampilkan dan element ke berapa
      body: _layoutPage.elementAt(_selectedIndex),
      // membuat bottom bedara di bawah
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Awal'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            title: Text('Simpan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda),
            title: Text('Awal'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            title: Text('Inbox'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Akun Saya'),
          ),
        ],
        // tombol navigation biar aktif
        type: BottomNavigationBarType.fixed,
        // 
        currentIndex: _selectedIndex,
        // ketika klik menu akan pindah scrool warna tersebut
        onTap: _onTabItem,
      ),
    );
  }
}