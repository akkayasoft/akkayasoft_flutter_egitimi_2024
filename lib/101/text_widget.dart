import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({required this.mesaj});
  final String mesaj;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              mesaj,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                backgroundColor: Colors.amber,
                fontSize: 24,
                wordSpacing: 4,
                letterSpacing: 1,
                color: Colors.blue.shade700,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline
              ),
              ),
              ProjeTextWidget(projeMesaj: 'Merhaba',),
              Text(
              'Merhaba ben 3. text widget nasılsınız',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: ProjeYaziStilleri.stiller,
              ),
          ],
        ),
      ),
    );
  }
}

class ProjeTextWidget extends StatelessWidget {
  final String projeMesaj;
  ProjeTextWidget({required this.projeMesaj});

  @override
  Widget build(BuildContext context) {
    return Text(
    projeMesaj,
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    style: ProjeYaziStilleri.stiller,
    );
  }
}


class ProjeYaziStilleri{
  static TextStyle stiller=TextStyle(
                backgroundColor: Colors.pink,
                fontSize: 16,
                wordSpacing: 4,
                letterSpacing: 1,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline
              );
}