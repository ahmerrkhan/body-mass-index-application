import 'package:flutter/material.dart';
import 'InputScreen.dart';
import 'calResult.dart';


class ResultScreen extends StatefulWidget {
  String result;
  String msg;
  String Des;
  ResultScreen(this.msg,this.result,this.Des);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI"
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              "Your result : ",
              style: TextStyle(color: Colors.white, fontSize: 28.5),
            ),
          ),
          Expanded(
            flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(widget.result,style: TextStyle(color: Colors.white,fontSize: 50.0),),
                  Text(widget.msg,style: TextStyle(color: Colors.white,fontSize: 40.0),),
                  Text(widget.Des,style: TextStyle(color: Colors.white,fontSize: 24.0),),
                ],
              ),
          ),
          Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10.0),
                  color: Colors.greenAccent,
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Text("Re-Calculate",style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold),),
                ),
              ))
        ],
      ),
    );
  }
}
