import 'package:flutter/material.dart';
import 'utama.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  //untuk membuat widget statis
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pemilihan Ketua BEM',
      home: Login(),
      routes: <String, WidgetBuilder>{
        '/utama' : (BuildContext context) => Utama(),
        '/login' : (BuildContext context) => Login()
      },//untuk mendeklarasikan class login
    );
  }
}

class Login extends StatefulWidget {
  //untuk membuat widget dinamis
  const Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      //untuk membuat sebuah halaman
      backgroundColor: Colors.green[600],
      body: Container(
        //untuk mengatur penempatan dan ukuran pada tata letak
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 44),
                ),
                Text(
                  "PEMILIHAN KETUA BEM",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'times new roman'),
                  textAlign: TextAlign.center,
                ),
                Padding(padding: const EdgeInsets.only(top: 5)),
                Image.asset(
                  'img/unjani.png',
                  width: 165,
                  height: 210.0,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                      ),
                      TextField(
                        //untuk membuat inputan
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.person_outline,
                            color: Colors.white,
                          ),
                          hintText: 'Insert Username',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock_outline,
                            color: Colors.white,
                          ),
                          hintText: 'Insert Password',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top: 22)),
                RaisedButton(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.blue[800],
                  onPressed: () {
                    Navigator.pushNamed(context, '/utama');
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

