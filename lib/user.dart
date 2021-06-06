import 'package:flutter/material.dart';


class User extends StatefulWidget {

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(       
        backgroundColor: Colors.blueGrey, 
        title: Center(child: Text("Ecom App UI", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),)),
        actions: <Widget> [
        Row(
          children: <Widget>[
            IconButton(onPressed: (){}, icon: Stack(
              children: <Widget>[
                Icon(Icons.notifications,
                color: Colors.white,)
              ],)
              )
          ],
        ),
        ],
      ), 
    
      body: 
      SingleChildScrollView(
              child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/user.jpg'),
                radius: 100,                  
            ),
            ),
            Align(
              alignment: Alignment.topLeft,
                child: Padding(
                padding: const EdgeInsets.only(top: 10,left: 15),
                child: Text('ACCOUNT INFORMATION', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text('Full Name', style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text('user', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  ListTile(
                  title: Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('user@gmail.com'),
                  ),
                  ListTile(
                  title: Text('Phone', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('+0900-786-12'),
                  ),
                  ListTile(
                  title: Text('Address', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('New York,Random Street House No.22'),
                  ),
                  ListTile(
                  title: Text('Gender', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('Male'),
                  ),
                   ListTile(
                  title: Text('Date Of Birth', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('October 12.1999'),
                  ),
              ],
            ),
            
          ],
        ),
      ),
      
      );
  }
}