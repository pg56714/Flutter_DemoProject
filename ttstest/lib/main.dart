import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  
  final FlutterTts flutterTts = FlutterTts();

  speak() async{
    //print(await flutterTts.setPitch);
    await flutterTts.setLanguage("en-US");
    //await flutterTts.setPitch(1.0);
    //await flutterTts.speak(text);
    await flutterTts.speak('hello how are you');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('tts'),
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Press this button to say hello', 
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async{           
                    speak();
                  },
                  child: Column(
                    children: <Widget>[
                      Text('say hello',style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),    
    );
  }
}