import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/product');
            },
            child: const BackButton()),
        title: const Text(
          'My Profile',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),


      //Profile Details Section
      body: Column(
          children: [
            Image.asset(
              "lib/images/pfp.jpg",
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20,),

            const Expanded(
              flex: 0,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name', style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                      Text('Michonne', style: TextStyle(
                        fontSize: 25,
                      ),
                      ),
                      SizedBox(height: 10),
                      Text('Account Level', style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                      Text('10', style: TextStyle(
                        fontSize: 25,
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            //Tiles
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Personal Details'),
                    leading: Icon(CupertinoIcons.person),
                    trailing: Icon(Icons.arrow_forward, color: Colors.black54,),
                  ),
                  ListTile(
                    title: Text('My Card'),
                    leading: Icon(CupertinoIcons.creditcard),
                    trailing: Icon(Icons.arrow_forward, color: Colors.black54,),
                  ),
                  ListTile(
                    title: Text('My Orders'),
                    leading: Icon(CupertinoIcons.bag),
                    trailing: Icon(Icons.arrow_forward, color: Colors.black54,),
                  ),
                  ListTile(
                    title: Text('Settings'),
                    leading: Icon(CupertinoIcons.settings),
                    trailing: Icon(Icons.arrow_forward, color: Colors.black54,),
                  ),
                  ListTile(
                    title: Text('FAQs'),
                    leading: Icon(CupertinoIcons.question_circle),
                    trailing: Icon(Icons.arrow_forward, color: Colors.black54,),
                  ),
                  ListTile(
                    title: Text('Privacy Policy'),
                    leading: Icon(CupertinoIcons.flag),
                    trailing: Icon(Icons.arrow_forward, color: Colors.black54,),
                  ),
                  ListTile(
                    title: Text('Terms and Conditions'),
                    leading: Icon(CupertinoIcons.lock_circle),
                    trailing: Icon(Icons.arrow_forward, color: Colors.black54,),
                  ),
                ],
              ),
            ),
          ],
      ),
    );
  }
}
