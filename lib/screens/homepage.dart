import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:study/Routes/routes_name.dart';

@RoutePage()
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: InkWell(
        onTap: () {
          context.router.pushNamed(RoutesName.dashboard);
        },
        child: Container(
          height: 300,
          width: 250,
          color: Colors.amber,
          child: Center(child: Text("Homepage")),
        ),
      ),
    );
  }
}
