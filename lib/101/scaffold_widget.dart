import 'package:flutter/material.dart';
import 'package:sevket_flutter_egitimi_2024/101/text_widget.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold Çalışması"),
        
      ),
      body: ProjeTextWidget(projeMesaj: 'Scaffold Mesaj Ekranı',),
      backgroundColor: Colors.pink.shade100,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            context: context, 
            builder: (context)=>Container(
              height: 300,
              width: 300,
              child: Center(child: Text('Panel Açıldı')),
            ));
        },
        child: Icon(Icons.message),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Anasayfa'),
            BottomNavigationBarItem(icon: Icon(Icons.browse_gallery),label: 'Galeri'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Ayarlar'),
          ],
        ),
      ),
    );
  }
}