import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'text to speech',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Center(child: flutterapplication1()),
      ),
    );
  }
}

class flutterapplication1 extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();

  speak(String text) async {
    await flutterTts.setLanguage("he-IL");
    await flutterTts.setPitch(1);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            // MainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                controller: textEditingController,
              ),
              ElevatedButton(
                child: Text("Start Text to speech "),
                onPressed: () => speak(textEditingController.text),
              )
            ],
          ),
        ));
  }
}
