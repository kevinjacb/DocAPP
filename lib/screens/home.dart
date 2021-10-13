import 'package:flutter/material.dart';
import '../widgets/appbar.dart';

//import '../variables/variables.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //Variables variable = Variables();
    double HEIGHT = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Appbar(),
      ),
      //drawer: AppDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        //backgroundColor: Colors.black12,
        elevation: 5,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.green,
              label: "Haa"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Message",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.green,
          ),
        ],
        type: BottomNavigationBarType.fixed,
        onTap: null,
      ),
    );
  }
}
