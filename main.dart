import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';


MyApp(){
  FlutterStatusbarcolor.setStatusBarColor(Colors.pinkAccent); 
  mypic(){
    print('PING ME!!!!');
  }
  mypro1(){
  Fluttertoast.showToast(
        msg: "I'm a Software Engineer!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 20,
        backgroundColor: Colors.pinkAccent,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
 
  var myicon1=Icon(Icons.email, color: Colors.white,);
  var url='https://github.com/ashimachopra20/ash.github.io/raw/master/images/ashii.jpg';
  var myimage=Image.network(url);
var mypro=Icon(Icons.account_circle, color: Colors.black,);
var myappbar=AppBar(
    title: Center(child: Text('YOUR PROFILE',style: TextStyle(fontStyle:FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.black87),)),
    backgroundColor: Colors.pinkAccent,
    
    actions: <Widget>[
      IconButton(icon: mypro, onPressed: mypic)
    ],
 );
var mybody= Container(
  height:500,
  width:500,
  color: Colors.black,
  alignment:Alignment.center,
 child: Stack(
    alignment: Alignment.topCenter,
   children: <Widget>[
     Container(
     padding:EdgeInsets.only(top:60),
   
height: 200,
  width: 600,


margin: EdgeInsets.all(30),

decoration: BoxDecoration(
  
     border:Border.all(width: 6.0, color: Colors.pinkAccent),
   color:Colors.blueGrey,
),
child:Column( 
  mainAxisAlignment: MainAxisAlignment.center,
 
  children:
 
  <Widget> 
  [


  Center(child: Text('   Ashima Chopra',style: TextStyle(fontStyle:FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white),)),
   Row(mainAxisAlignment: MainAxisAlignment.center, 
  children: <Widget>[
    IconButton(icon: myicon1, onPressed: null),
    Center(child: Text('ashima100@gmail.com',style: TextStyle(fontStyle:FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white),))],)
  
  ]
)

   ),
   GestureDetector(child:
   Container(
     height:120,      
  width: 120,
  //color: Colors.orange,
   //padding: EdgeInsets.all(60),
   //margin: EdgeInsets.only(bottom:300.0),
   decoration: BoxDecoration(
     //color:Colors.pinkAccent,
     border:Border.all(width: 6.0, color:Colors.pinkAccent),
    borderRadius: BorderRadius.circular(100),
    
    image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover),
    //color:Colors.blueGrey,
   ),
   //alignment: AlignmentDirectional.topCenter,
  
   ),
   onDoubleTap: mypro1,),
   ],
   
 )
 
 
 );

var myhome=Scaffold(
  appBar: myappbar ,
  body: mybody,
 );


  return MaterialApp(
    home:myhome,
   
    debugShowCheckedModeBanner: false,
    
  );
 
}
