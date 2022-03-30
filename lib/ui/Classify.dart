
import 'package:flutter/material.dart' ;
import 'package:untitled1/TestDemo02.dart';

void main(){
  runApp(const MaterialApp(
    home: Classify(),
  ));
}

class Classify extends StatefulWidget{
  const Classify({Key? key}) : super(key: key);

  @override
  _Classify createState() => _Classify();
}
class _Classify extends State<Classify>{
  @override
  Widget build(BuildContext context) {
    return Text('123');

  }

}
