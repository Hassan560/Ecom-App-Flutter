import 'package:flutter/material.dart';
import 'package:hello/user.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
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
              Align(
                alignment: Alignment.topCenter,
                  child: Container(
                   width: 300,            
                   child: TextField(keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(
                     labelText: 'Username' ),
                     ),
                             
                  ),
              ),        
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 25, top: 15),
                  child: Text("History", style: TextStyle(fontWeight: FontWeight.bold),)
                  ),             
                ),
              
              abc(),
              abc(),
              abc(),
              abc(),
              abc(),
              abc(),
              abc(),
              abc(),
              abc(),
              abc(),
              abc(),
              
              Align(
                alignment: Alignment.bottomLeft,
                              child: Container(
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>User()));
                  }, child: Center(
                    child: Text("Go to user page",)
                    ),
                    ),
                ),
              )
            ],
          ),
        )
    );
  }
}


Widget abc (){
  return ListTile(
              leading: CircleAvatar(
              backgroundImage: AssetImage('assets/ipone.jpg'),
              ),
              title: Text("Iphone 12", style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("5.0 (23 reviews)"),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("RS10", style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              );

}

           