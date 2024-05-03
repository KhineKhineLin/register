import 'package:flutter/material.dart';
import 'package:register/screen/postform.dart';
import 'package:register/screen/postscreen.dart';
import 'package:register/screen/register.dart';

import '../service/user_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog App'),
        actions: [
          IconButton(
              onPressed: () {
                logout().then((value) => {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                          (route) => false)
                    });
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: PostScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => PostForm()));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
