import 'package:appfluttter/Register.dart';
import 'package:appfluttter/login.dart';
import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(
                unselectedLabelColor: Colors.black54,
                labelColor: Colors.orange,
                indicatorColor: Colors.orange,
                tabs: [
                  Tab(
                    child: Text("Login"),
                  ),
                  Tab(
                    child: Text("Register"),
                  )
                ]),
          ),
          body: TabBarView(children: [
            Login(),
            Register(),
          ]),
        ));
  }
}
