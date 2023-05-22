import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final int minValue = 0;
  late final int maxValue = 10;
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas 2"),
      ),
      body: Column(
        children: [
          Text("Nama: Triono Saputro"),
          Text("Nim: 2015420038"),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.remove,
                    color: Theme.of(context).accentColor,
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
                  iconSize: 32.0,
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    setState(() {
                      if (counter > minValue) {
                        counter--;
                      }
                      // onChanged(counter);
                    });
                    setState(() {});
                  },
                ),
                Text(
                  '$counter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Theme.of(context).accentColor,
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
                  iconSize: 32.0,
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    setState(() {
                      if (counter < maxValue) {
                        counter++;
                      }
                      // onChanged(counter);
                    });
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
