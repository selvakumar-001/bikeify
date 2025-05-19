import 'package:flutter/material.dart';
import 'package:bikeify/location.dart';
import 'package:bikeify/setting.dart';
import 'package:bikeify/login.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    home(),
    location(),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 3: Home',
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:Color(0xff07a467) ,
      appBar: AppBar(
        backgroundColor: Color(0xff07a467),
        elevation: 0,
        centerTitle: true,
        title: Image.asset("Image/Title.png", width: 90.0),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
          
        ),
      ),
      drawer: Drawer(
        child: ListView(children: [
          const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: const Color(0xff09682d)),
              accountName: Text(
                "Selvakumar C",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "selvakumar@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person_2_outlined),
              )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => home())),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => setting())),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => login())),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip_outlined),
            title: Text('Privacy'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => login())),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => login())),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        unselectedItemColor: Colors.green,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bike_scooter,
            ),
            label: 'Bike info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'My Rides',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        // backgroundColor: Color(0xff07a467),
      ),
    );
  }
}
