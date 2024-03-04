import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sankar/main.dart';
import 'package:sankar/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final space = SizedBox(height: height * 0.04);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Scaffold(
        backgroundColor: Colors.pink.withOpacity(0.1),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple.shade800,
                height: height * 0.28, //container size
                padding: EdgeInsets.only(
                  top: height * 0.04,
                  left: height * 0.04,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/dp.jpg'),
                      radius: height*0.05,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: height*0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shankar Ankepaka',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: height*0.01,),
                          Text(
                            'Shankar@gmail.com',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      // SizedBox(height: height*0.02,),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: height * 0.13,
              padding: EdgeInsets.all(20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.home),
                  SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                    },
                    child: Text('Home',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple.shade800,
                    ),),
                  )
                ],
              ),
            ),
            Container(
              height: 1.5, // Adjust the height of the Divider
              color: Colors.purple.shade800, // Set the color of the Divider
            ),
            Container(
              height: height * 0.13,
              padding: EdgeInsets.all(20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.settings),
                  SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                    },
                    child: Text('Settings',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade800,
                      ),),
                  ),
                ],
              ),
            ),
            Container(
              height: 1.5, // Adjust the height of the Divider
              color: Colors.purple.shade800, // Set the color of the Divider
            ),
            Container(
              height: height * 0.13,
              padding: EdgeInsets.all(20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.print),
                  SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                    },
                    child: Text('About us',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade800,
                      ),),
                  )
                ],
              ),
            ),
            Container(
              height: 1.5, // Adjust the height of the Divider
              color: Colors.purple.shade800, // Set the color of the Divider
            ),
            Container(
              height: height * 0.13,
              padding: EdgeInsets.all(20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.contacts),
                  SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                    },
                    child: Text('Contact us',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade800,
                      ),),
                  )
                ],
              ),
            ),
            Container(
              height: 1.5, // Adjust the height of the Divider
              color: Colors.purple.shade800, // Set the color of the Divider
            ),
            Container(
              height: height * 0.13,
              padding: EdgeInsets.all(20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.logout),
                  SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp(),));
                    },
                    child: Text('Log out',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade800,
                      ),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
