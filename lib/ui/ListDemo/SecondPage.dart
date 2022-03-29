
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  const SecondPage({Key? key}) : super(key: key);

  void iconOnPressed(BuildContext context){
    Navigator.pop(context, "我是返回值");
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () => iconOnPressed(context)
            ),
            title: const Text(
              '使用ListView',
              style: TextStyle(fontSize: 15.0, color: Colors.black),
            )),
        body: const Center(
          child: Text(
            '第二个界面',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black
            ),
          ),
        ),
      ),
    );
  }

}