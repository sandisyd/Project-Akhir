import 'package:flutter/material.dart';

//Method utama untuk menjalankan program
void main() {
  runApp(new MaterialApp(
    title: "Home",
    home: new Utama(),
  ));
}

//Class utama
class Utama extends StatefulWidget {
  @override
  _UtamaState createState() => _UtamaState();
}

class _UtamaState extends State<Utama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('PEMILIHAN KETUA BEM'),
        leading: IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            }),
        backgroundColor: Colors.green[600],
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              child: InkWell(

                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Hero(
                          tag: Icon,
                          child: Material(
                            child: InkWell(
                              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) => Detail(),
                              )),
                            ),
                          )),
                      Icon(Icons.home, size: 70, color: Colors.green[600]),
                      Text("BEM Unjani",
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Calibri',
                              fontWeight: FontWeight.bold)),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      RaisedButton(
                          child: Text(
                            "Hasil Voting",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.green[600],
                          onPressed: () {}),
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
                        Icons.laptop_mac,
                        size: 70,
                        color: Colors.green[600],
                      ),
                      Text("BEM FTTI",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Calibri',
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      RaisedButton(
                          child: Text(
                            "Hasil Voting",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.green[600],
                          onPressed: () {})
                    ],
                  ),
                ),
              ),
            ),
            //Padding(padding: EdgeInsets.only(top: 5)),
            Card(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.local_hospital,
                        size: 70,
                        color: Colors.green[600],
                      ),
                      Text("BEM FKes",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Calibri',
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      RaisedButton(
                          child: Text(
                            "Hasil Voting",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.green[600],
                          onPressed: () {})
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
                        Icons.account_balance,
                        size: 70,
                        color: Colors.green[600],
                      ),
                      Text("BEM FES",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: 'Calibri',
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      RaisedButton(
                          child: Text(
                            "Hasil Voting",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.green[600],
                          onPressed: () {})
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget{
  Detail({this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 244,
          )
        ],
      ),
    );
  }
}