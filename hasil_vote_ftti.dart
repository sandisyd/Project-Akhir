import 'package:flutter/material.dart';

//Method utama untuk menjalankan program
void main() {
  runApp(new MaterialApp(
    title: "My Apps",
    home: new MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

//Class utama
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(null),
        ),
        title: new Text('Hasil Voting BEM FTTI'),
        backgroundColor: Colors.green[800],
      ),
      body: new Container(
        padding: EdgeInsets.all(10),
        child: GridView.count(
          //untuk menampilkan kombinasi dari gambar dan teks
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.group,
                        size: 70,
                        color: Colors.green[600],
                      ),
                      Text(
                        'Paslon 1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '55%',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.group,
                        size: 70,
                        color: Colors.green[600],
                      ),
                      Text(
                        'Paslon 2',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '45%',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
