
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: Demo(),
));


class Demo extends StatefulWidget{
  @override
  _Demo createState() => _Demo();

}
class _Demo extends State<Demo>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: IconButton(
            iconSize: 50.0,
            icon: Icon(Icons.backpack),
            color: Colors.yellow,
            onPressed: () {
              print('IconButton已被点击');
            },
          ),
        ),
      )
    );
  }
  @override
  void initState() {
    super.initState();
    print('<----> initState <---->');
  }
  @override
  void activate() {
    super.activate();
    print('<----> activate <---->');
  }
  @override
  void deactivate() {
    super.deactivate();
    print('<----> deactivate <---->');
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('<----> didChangeDependencies <---->');
  }
@override
  void didUpdateWidget(covariant Demo oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('<----> didUpdateWidget <---->');
}
@override
  void dispose() {
    super.dispose();
    print('<----> dispose <---->');

}


}