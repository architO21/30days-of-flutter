import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:english_words/english_words.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),);
  }
}
class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    print(current);
    notifyListeners();
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context)
  {
    var appState= context.watch<MyAppState>();
    return Scaffold(
      body: Column(
        children: [
          Text('THIS IS MY FIRST FLUTTER APPLICAYTION'),
          Text('handle this app with care'),

          ElevatedButton(onPressed: (){
           appState.getNext();
          }, child: Text('Next'),)
        ],
      ),
    );
  }
}
/*
 Todays date -> 7th April 2023
 This is the completion of a basic flutter project I have added a function getNext which is present inside a class MyAppState and this function is used to generate a random word pair
 Installed dependencies such as english words and also provider
  */
