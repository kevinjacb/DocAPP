import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/drawer.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.messenger_rounded,
          color: Colors.black,
        ),
        elevation: 5,
        backgroundColor: Colors.amber,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
