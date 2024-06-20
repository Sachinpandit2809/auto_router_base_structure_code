import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:study/Routes/routes_name.dart';
import 'package:study/screens/homepage.dart';

@RoutePage()
class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
        actions: [Icon(Icons.more_vert)],
        actionsIconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 0),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                  // begin: Alignment.centerRight,
                  // end: Alignment.centerLeft,
                  colors: [Colors.amber, Colors.green, Colors.pink]),
            ),
          ),
          InkWell(
            child: Text("test click for home"),
            onTap: () {
              context.router.pushNamed(RoutesName.dashboard);
              //context.router.pushNamed(RoutesName.dashboard);
            },
          )
        ],
      ),
    );
  }
}
