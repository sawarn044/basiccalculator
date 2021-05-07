import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Calculator",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int firstnum;
  int secondnum;
  String display="";
  String result="";
  String operation="";
  var mytext="Calculator";
  bool empty= true;

  void onButtonClick(String val){
   print(val);
   empty=false;
   if(val=='+'||val=='-'||val=='x'||val=='/'||val=='%'){
     firstnum=int.parse(display);
     result="";
     operation=val;
   }
   else if(val=='='){
     secondnum=int.parse(display);
     if(operation=='+'){
       result=(firstnum+secondnum).toString();
     }
     else if(operation=='-'){
       result=(firstnum-secondnum).toString();
     }
     else if(operation=='x'){
       result=(firstnum*secondnum).toString();
     }
     else if(operation=='/'){
       result=(firstnum/secondnum).toString();
     }
     else if(operation=='%'){
       result=(firstnum%secondnum).toString();
     }
   }
   else{
     result=int.parse(display+val).toString();
   }
   setState(() {
     display=result;
     mytext=display;
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(

        children:[
          Container(

            alignment: empty==true? Alignment.topLeft:Alignment.bottomRight,
            color: Colors.grey[100],
            height: MediaQuery.of(context).size.height*(2/5),
            width: MediaQuery.of(context).size.width,
            child: Text(
              mytext,
              style: TextStyle(fontSize: 50),
            ),

          ),
          Container(
             color: Colors.grey[200],
          height: MediaQuery.of(context).size.height*(3/5),
          width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.grey[200],
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          ),
                child: Column(
                  //mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            display="";
                            result="";
                            firstnum=0;
                            secondnum=0;
                            mytext="Calculator";
                            empty=true;
                            setState(() {});
                          },
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text("AC",textScaleFactor: 1.5,),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {
                          result=display.substring(0,display.length-1);
                          setState(() {
                            display=result;
                            mytext=display;
                          });
                          },
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Icon(
                            Icons.backspace,
                            size: 30,
                          ),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {onButtonClick("%");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text(
                            "%",textScaleFactor: 1.5
                          ),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {onButtonClick("/");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text(
                            "/",textScaleFactor: 1.5
                          ),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          onPressed: () {onButtonClick("7");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text("7",textScaleFactor: 1.5),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {onButtonClick("8");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text("8",textScaleFactor: 1.5),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {onButtonClick("9");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text(
                            "9",textScaleFactor: 1.5
                          ),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {onButtonClick("x");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text(
                            "x",textScaleFactor: 1.5
                          ),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        MaterialButton(
                          onPressed: () {onButtonClick("4");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text("4",textScaleFactor: 1.5),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {onButtonClick("5");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text("5",textScaleFactor: 1.5),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {onButtonClick("6");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text(
                            "6",textScaleFactor: 1.5
                          ),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {onButtonClick("-");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text(
                            "-",textScaleFactor: 1.5
                          ),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          onPressed: () {onButtonClick("1");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text("1",textScaleFactor: 1.5),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {onButtonClick("2");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text("2",textScaleFactor: 1.5),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {onButtonClick("3");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text(
                            "3",textScaleFactor: 1.5
                          ),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {onButtonClick("+");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text(
                            "+",textScaleFactor: 1.5
                          ),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Icon(Icons.zoom_out_map,size: 25,),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {onButtonClick("0");},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text("0",textScaleFactor: 1.5),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.grey[200],
                          textColor: Colors.black54,
                          child: Text(
                            ".",textScaleFactor: 1.5
                          ),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        ),
                        MaterialButton(
                          onPressed: () {onButtonClick("=");},
                          color: Colors.pink[900],
                          textColor: Colors.white,
                          child: Text(
                            "=",textScaleFactor: 1.5
                          ),
                          padding: EdgeInsets.all(25),
                          shape: CircleBorder(),
                        )
                      ],
                    )
                  ],
                ),
              ),
        ),
      ]
      ),
    );
  }
}
