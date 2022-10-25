import 'package:flutter/material.dart';
import 'package:helo_ind/login_screen.dart';

import 'constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: Icon(Icons.menu),*/
        title: Text("Helo_IND"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.currency_rupee_sharp),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.contact_page),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.blue,
        height: 60,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Icon(Icons.home),
          Icon(Icons.video_library),
          Icon(Icons.add_a_photo),
          Icon(Icons.notification_add),
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Icon(Icons.contacts)),
        ]),
      ),
      drawer: Drawer(
        elevation: 16.0,
        child: Column(children: const [
          UserAccountsDrawerHeader(
            accountName: Text(accountName),
            accountEmail: Text(accountEmail),
            currentAccountPicture:
                CircleAvatar(backgroundColor: Colors.white, child: Text("KK")),
          ),
          ListTile(
            title: Text('Manage Account'),
            leading: Icon(Icons.account_box),
          ),
          Divider(
            height: 0.1,
          ),
          ListTile(
            title: Text('Language'),
            leading: Icon(Icons.language),
          ),
          Divider(
            height: 0.1,
          ),
          ListTile(
            title: Text('Privacy Policy'),
            leading: Icon(Icons.privacy_tip),
          ),
          Divider(
            height: 0.1,
          ),
          ListTile(
            title: Text('Help Feedback'),
            leading: Icon(Icons.feedback),
          ),
          Divider(
            height: 0.1,
          ),
          ListTile(
            title: Text('Setting'),
            leading: Icon(Icons.settings),
          ),
          Divider(
            height: 0.1,
          ),
        ]),
      ),
    );
  }
}
