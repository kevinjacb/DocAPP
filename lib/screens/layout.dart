import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import 'home.dart';
import 'calendar.dart';
import 'profile.dart';

//import '../variables/variables.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int index = 0;
  PageController controller = PageController(initialPage: 0);
  late Animatable<Color?> background;

  @override
  void initState() {
    background = TweenSequence<Color?>(<TweenSequenceItem<Color?>>[
      TweenSequenceItem<Color?>(
          tween: ColorTween(begin: Colors.cyan, end: Colors.brown[600]),
          weight: 1),
      TweenSequenceItem<Color?>(
          tween: ColorTween(begin: Colors.brown[600], end: Colors.white),
          weight: 1)
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, _) {
          final color = controller.hasClients ? controller.page! / 2.0 : 0.0;
          return Container(
            color: background.evaluate(AlwaysStoppedAnimation(color)),
            child: PageView(
              controller: controller,
              onPageChanged: (page) {
                setState(() {
                  index = page;
                });
              },
              children: const [Home(), Calendar(), Profile()],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        elevation: 2,
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.green,
              label: "Home"),
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
        onTap: (int index) {
          setState(() {
            this.index = index;
            controller.animateToPage(index,
                duration: Duration(milliseconds: 500), curve: Curves.ease);
          });
        },
      ),
    );
  }
}
