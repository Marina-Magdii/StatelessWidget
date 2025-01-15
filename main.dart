import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
              'My First Project',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // First Image
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/newImage.jpg",
                          width: MediaQuery.of(context).size.width*0.5,
                        ),
                      ),
                      // Second Image
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwsAn_T3aA0ZWjVoysDInUL7Aj0n3TZUamsQ&s",
                          width: MediaQuery.of(context).size.width*0.5,
                        ),
                      ), // Customized Text

                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'The two images are displayed',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SwankyandMooMoo",
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
