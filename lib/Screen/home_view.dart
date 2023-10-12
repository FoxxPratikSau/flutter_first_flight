import 'package:flutter/material.dart';
import 'package:gdsc_ses/Screen/second_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final Sheight = MediaQuery.of(context).size.height;
    final Swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Hello Worlds"),
                SizedBox(
                  //height: 25,
                  width: Swidth * 0.1,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
              child: Text("Next Page"),
            )
          ],
        ),
      ),
    );
  }
}
