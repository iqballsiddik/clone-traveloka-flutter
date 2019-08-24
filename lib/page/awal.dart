import 'package:flutter/material.dart';

class Awal extends StatefulWidget {
  @override
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Traveloka')),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      // biar bisa banyak wiget
      body: ListView(
        children: <Widget>[
          Akun(),
          // ini untuk garis pemisah
          Divider(),
          MenuUtama(),
          MenuTambahan(),
          Promo(),
        ],
      ),
    );
  }
}

// khusus akun
class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/images/jokowi.jpg');
    // var img = new Image(image: assetsImage);
    return Padding(
      //mengatur padding vertical
      padding: const EdgeInsets.symmetric(vertical: 8.8),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              // biar image menjadi circle(bulat)
              shape: BoxShape.circle,
              image: DecorationImage(
                // untuk memenuhi seluruh box
                fit: BoxFit.fill,
                image: assetsImage,
              )),
        ),
        // title nama
        title: new Text(
          'Jokowi Dodo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: <Widget>[
            // ini adalah button point
            RaisedButton.icon(
              icon: Icon(Icons.album),
              label: Text('300 Point'),
              onPressed: () {},
              color: Colors.grey[200],
              // untuk menghilangkan shadow
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 5.0),
            ),
            // ini adalah button travelokaPay
            RaisedButton(
              child: Text('travelokaPay'),
              onPressed: () {},
              color: Colors.grey[200],
              // untuk menghilangkan shadow
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
            )
          ],
        ),
      ),
    );
  }
}


// Khusus Menu UTAMA
class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      /// karna kita pake grid kita harus mengatur biar bisa di scroll
      /// kalau tidak di definisikan maka akan error karna dia ke samping
      shrinkWrap: true,
      // untuk menampilkan grid view 5 ke samping
      crossAxisCount: 5,
      children: menuUtamaItem,
    );
  }
}
// List Menu
List<MenuUtamaItem> menuUtamaItem = [
  // definisikan menu item yang akan di buat
  // menu tiket pesawat
  MenuUtamaItem(
    title: 'Tiket Pesawat',
    icon: Icons.flag,
    colorBox: Colors.blue,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Hotel',
    icon: Icons.hotel,
    colorBox: Colors.blue[200],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Pesawat + Hotel',
    icon: Icons.flight_land,
    colorBox: Colors.blueAccent,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Xperience',
    icon: Icons.local_play,
    colorBox: Colors.pinkAccent,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Eats',
    icon: Icons.local_dining,
    colorBox: Colors.red,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Kereta Apu',
    icon: Icons.train,
    colorBox: Colors.orangeAccent,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Bus & Travel',
    icon: Icons.directions_bus,
    colorBox: Colors.greenAccent,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Antar Jemput',
    icon: Icons.local_taxi,
    colorBox: Colors.blue[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Rental Mobil',
    icon: Icons.directions_car,
    colorBox: Colors.green[900],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Semua Produk',
    icon: Icons.blur_on,
    colorBox: Colors.grey,
    iconColor: Colors.white,
  ),
];
// Menu Utama
class MenuUtamaItem extends StatelessWidget {
  // mengembalikan nilai
  MenuUtamaItem({this.title, this.icon, this.colorBox, this.iconColor});
  final String title;
  final IconData icon;
  final Color colorBox, iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            /// all area box menu
            height: 40.0,
            width: 50.0,
            // untuk membuat box decoration
            decoration: BoxDecoration(
                // perubahan color box ini di atur di func atas
                color: colorBox,
                shape: BoxShape.circle),
            // icon dan iconColor di atur di atas
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: new Text(
              title,
              style: TextStyle(
                fontSize: 12.0,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
// End MENU UTAMA


// this is menu tambahan

class MenuTambahan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: menuTambahan,
      )
    );
  }
}


/// untuk menampung item yang akan kita buat
/// dan MenuTambahanItem ini saya buat widget terpisah
/// MenuTambahanItem akan di panggil, ini untuk penampung saja
List<MenuTambahanItem> menuTambahan =[
  MenuTambahanItem(
    title: 'Tagihan & Isi Ulang',
    icon: Icons.receipt,
  ),
  MenuTambahanItem(
    title: 'Internet Luar Negri',
    icon: Icons.data_usage,
  ),
  MenuTambahanItem(
    title: 'Bioskop',
    icon: Icons.movie,
  ),
  MenuTambahanItem(
    title: 'Paylater',
    icon: Icons.payment,
  ),
  MenuTambahanItem(
    title: 'Status Penerbangan',
    icon: Icons.airplanemode_active,
  ),
  MenuTambahanItem(
    title: 'Pulsa & Paket Internet',
    icon: Icons.signal_cellular_4_bar,
  ),
  MenuTambahanItem(
    title: 'Online Check-In',
    icon: Icons.airplanemode_inactive,
  ),
  MenuTambahanItem(
    title: 'Notifikasi Harga',
    icon: Icons.notifications,
  ),
]; 


class MenuTambahanItem extends StatelessWidget {
  // kiriman parameter title dan icon dari List<MenuTambahanItem>
  MenuTambahanItem({this.title, this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        children: <Widget>[
          Icon(icon),
          Text(
            title,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

// end menu tambahan


class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('Promo Saat Ini', style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22.0),), 
          // icon di pojok kanan menggunakan trailing
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: (){},
          ),
        ),
        Container(
          // lebar tidak terbatas
          width: double.infinity,
          height: 150.0,
          padding: EdgeInsets.only(left: 8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                height: 150.0,
                width: 150.0,
                // untuk membuat box
                decoration: BoxDecoration(
                  // untuk gradasi warna 
                  gradient: LinearGradient(
                    // top warna
                    begin: Alignment.topCenter,
                    // bottom warna
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue,
                      Colors.blue[800]
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8.0)
                ) ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(20.0, 20.0),
                          bottomRight: Radius.elliptical(150.0,150.0),
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0,left: 10.0, right: 30.0, bottom: 30.0),
                        child: Text('%', style: TextStyle(fontSize: 22.0,color: Colors.white),),
                      ),
                    ),
                    // untuk pemisah % sama text bawah
                    Expanded(
                      child: Container(),
                    ),
                    Text('Lihat Semua \nPromo', style: TextStyle(fontWeight: FontWeight.w500))
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
