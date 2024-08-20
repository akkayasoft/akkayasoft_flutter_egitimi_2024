import 'package:flutter/material.dart';

class ResimIslemleri extends StatelessWidget {
  const ResimIslemleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resim Galerimiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            resimalan(),
            resimalan(),
            resimalan(),
            Image.network('https://picsum.photos/200/300')
          ],
        ),
      ),
    );
  }
}

class resimalan extends StatelessWidget {
  const resimalan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        width: 300,
        child: Resimler(ad: 'harran',),
      ),
    );
  }
}

class Resimler extends StatelessWidget{
  final String ad;
  Resimler({required this.ad});
  @override
  Widget build(BuildContext context) {
    return Image.asset(_resimAdGetir,fit: BoxFit.cover,);
  }

  String get _resimAdGetir=>'assets/images/$ad.jpg';

}