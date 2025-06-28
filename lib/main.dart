import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resim çalışması"),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              child: FadeInImage.assetNetwork(
                placeholder: "resimler/loading.gif",
                image:
                    "https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554_640.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 300,
              width: 300,
              child: Placeholder(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
