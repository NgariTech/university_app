import 'package:flutter/material.dart';
import 'package:university_app/screens/Log in.dart';

class grades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Grades"), backgroundColor: Colors.black,
        centerTitle: false,
        actions: <Widget>[
          PopupMenuButton(
              icon: const Icon(Icons.menu),
              itemBuilder: (context) => [
                    PopupMenuItem(
                        child: Row(
                      children: [
                        const Icon(Icons.settings, color: Colors.black),
                        Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: const Text('Settings'))
                      ],
                    )),
                    PopupMenuItem(
                        child: Row(
                      children: [
                        const Icon(Icons.notifications, color: Colors.black),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: const Text('Notifications'))
                      ],
                    )),
                    PopupMenuItem(
                        child: Row(
                          children: [
                            const Icon(Icons.logout, color: Colors.black),
                            Container(
                                margin: EdgeInsets.only(left: 10),
                                child: const Text('Logout'))
                          ],
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ));
                        })
                  ])
        ],
        //  leading: IconButton(
        //     onPressed: (){},
        //     icon:IconButton(
        //       icon:const Icon(Icons.menu) ,
        //         onPressed: (){},),
        //   )
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'My Grades',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
