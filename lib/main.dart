import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas_2',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'The Fallen Order'),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final title;

  const MyHomePage({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('assets/obiwan.jpg'),
             SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
             
              Text('Obiwan Kenobi',style: TextStyle(color: Colors.blueGrey,fontSize: 30.0),) ,
              Icon(Icons.star,color: Colors.orange,)
            ],),
            Text('Jedi',style: TextStyle(color: Colors.blueGrey,fontSize: 25.0,fontWeight: FontWeight.w800),) ,
            SizedBox(height: 10.0,),
            Text('Star Wars',style: TextStyle(color: Colors.orange,fontSize: 25.0,fontWeight: FontWeight.w800),) ,
            MaterialButton(
              onPressed: (){},
              color: Colors.red,
              child: Text('Click to watch',style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}