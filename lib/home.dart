import 'package:flutter/material.dart';
import 'login.dart';

class Home extends StatefulWidget {
  static String tag = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Menu Utama"),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      drawer: new Drawer(
        child: ListView(children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: new Text("Kelompok Kami"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn.idntimes.com/content-images/post/20170828/fotografer-358e9921ff43a44c01173e68e00a26cb_600x400.jpg"),
            ),
            decoration: new BoxDecoration(color: Colors.green[700]),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profil"),
          ),
          ListTile(
              leading: IconButton(
                  icon: new Icon(
                    Icons.exit_to_app,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(LoginApp.tag);
                  })),
        ]),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyMenu(
                title: "KRS", icon: Icons.library_books, warna: Colors.brown),
            MyMenu(title: "KHS", icon: Icons.info_outline, warna: Colors.blue),
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.green,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: warna,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}
