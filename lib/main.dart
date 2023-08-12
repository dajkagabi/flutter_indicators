import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loader(),
    );
  }
}

//Loader
class Loader extends StatefulWidget {
  const Loader({super.key});

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProgressIndicators'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Color.fromARGB(255, 185, 219, 211),
              valueColor: AlwaysStoppedAnimation(
                Color.fromARGB(255, 27, 122, 100),
              ),
              strokeWidth: 10,
            ),

            //LinearProgressIndicator
            SizedBox(
              height: 15,
            ),
            LinearProgressIndicator(
              backgroundColor: Color.fromARGB(255, 185, 219, 211),
              valueColor: AlwaysStoppedAnimation(
                Color.fromARGB(255, 27, 122, 100),
              ),
              minHeight: 20,
            )
          ],
        ),
      ),
    );
  }
}
