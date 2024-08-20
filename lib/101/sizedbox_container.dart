import 'package:flutter/material.dart';
import 'package:sevket_flutter_egitimi_2024/101/text_widget.dart';

class SizedBoxContainer extends StatelessWidget {
  const SizedBoxContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
       children: [
        SizedBox(
          width: 400,
          height: 300,
          child: Text('a'*500),
        ),
        SizedBox.shrink(),
        SizedBox.square(
          dimension: 150,
          child: Text('b'*50),
        ),
        FlutterLogo(),
        Container(
          child: Text('xxx'*100,maxLines: 2,),
          constraints: BoxConstraints(maxHeight: 100,maxWidth: 100,minHeight: 20,minWidth: 20),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: ProjeDecoration.kutuDekorasyon,

        ),
       ], 
      ),
    );
  }
}

class ProjeDecoration{
  static BoxDecoration kutuDekorasyon=BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 10,color: Colors.orange),
            gradient: LinearGradient(colors: [Colors.red.shade100,Colors.black]),
            boxShadow: [BoxShadow(color: Colors.green,offset: Offset(0.1, 1),blurRadius: 12)]
          );
}