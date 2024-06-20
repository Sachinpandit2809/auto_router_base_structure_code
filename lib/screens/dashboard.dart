import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:study/Routes/routes_name.dart';

@RoutePage()
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Container(
          color: Colors.green,
          height: 300,
          width: 250,
          child: ElevatedButton(
            child: Text("Test"),
            onPressed: () {
              context.router.pushNamed(RoutesName.test);
            },
          )),
    );
  }
}
