import 'package:flutter/material.dart';
import 'package:odds/pages/card.dart';
import 'package:odds/pages/insert.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController = TextEditingController();
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '4Kings Sorting Hat',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.list)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                          hintText: "Enter number of students",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: IconButton(
                            onPressed: () {
                              _textController.clear();
                            },
                            icon: const Icon(Icons.clear),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      padding: EdgeInsets.all(20),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InsertPage()),
                        );
                      },
                      color: Colors.blue,
                      child: Text(
                        'Enter',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                )),
            Container(color: Colors.red, child: const ProductCard())
          ],
        ),
      ),
    );
  }
}
