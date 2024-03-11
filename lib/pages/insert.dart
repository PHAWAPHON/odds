import 'package:flutter/material.dart';
import 'package:odds/pages/card.dart';

class InsertPage extends StatefulWidget {
  const InsertPage({Key? key}) : super(key: key);

  _InsertPageState createState() => _InsertPageState();
}

class _InsertPageState extends State<InsertPage> {
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
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
                      controller: _textController1,
                      decoration: InputDecoration(
                          hintText: "Enter student name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: IconButton(
                            onPressed: () {
                              _textController1.clear();
                            },
                            icon: const Icon(Icons.clear),
                          )),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      MaterialButton(
                        padding: EdgeInsets.all(20),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const CustomDialogWidget();
                            },
                          );
                        },
                        color: Colors.blue,
                        child: Text(
                          'Enter',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      MaterialButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        minWidth: 0,
                        height: 40,
                        onPressed: () {},
                        color: Colors.white,
                        child: Icon(
                          Icons.restart_alt,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ])
                  ],
                )),
            Container(color: Colors.red, child: const ProductCard())
          ],
        ),
      ),
    );
  }
}

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "ยินดีด้วยค่ะ",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'assets/in2.jpg',
              width: 500,
              height: 500,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {},
                child: Text(
                  "OK",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
