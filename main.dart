import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(settings());
}

class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: page(),
    );
  }
}
class page extends StatefulWidget {
  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 10,),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://i.insider.com/589dbb873149a101788b4c85?width=1100&format=jpeg&auto=webp'),
                  radius: 45,
                ),
                SizedBox(height: 10,),
                Align(child: Card(child:Text("Welcome User",style:TextStyle(fontSize: 20),)),alignment: Alignment(0,-1),),
                SizedBox(height: 20,),
              ],
            ),
            Divider(),
            Align(child: Text('Account Settings',style: TextStyle(fontSize: 20,),),alignment: Alignment(-0.8,0.23),),
            SizedBox(height: 9,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: Colors.black87,),
                  gradient: LinearGradient(
                   // begin:  Alignment.topCenter,
                    //end: Alignment.bottomCenter,
                    colors: [Colors.pink,Colors.white70],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FlatButton(
                      onPressed:()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => personal_inforamtion()));
                            },
                      splashColor: Colors.greenAccent,
                      child: Text('Personal Information',style: TextStyle(fontSize: 20),textAlign: TextAlign.start,),
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: BorderSide(color: Colors.red)
                      ),
                    ),

                    FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => address()));
                      },
                      child: Text('Permanent Address',style: TextStyle(fontSize: 20),textAlign: TextAlign.start,),
                      splashColor: Colors.greenAccent,
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: BorderSide(color: Colors.red)
                      ),

                    ),

                    FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => upload_documents()));
                      },
                      child: Text('Upload Documents',style: TextStyle(fontSize: 20),textAlign: TextAlign.start,),
                      splashColor: Colors.green,
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: BorderSide(color: Colors.black12)
                      ),
                    ),

                    FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => personal_inforamtion()));
                      },
                      child: Text('Service Center',style: TextStyle(fontSize: 20),),
                      splashColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        side: BorderSide(color: Colors.black26),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Align(child: Text('Bank Account',style: TextStyle(fontSize: 20),),alignment: Alignment(-0.8,0.23),),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.greenAccent,Colors.indigo],
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black87,),
                ),
                child: 
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      FlatButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => personal_inforamtion()));
                        },
                        child: Text('e'),
                        splashColor: Colors.greenAccent,
                      ),
                      FlatButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => personal_inforamtion()));
                        },
                        child: Text('f'),
                        splashColor: Colors.greenAccent,
                      ),
                      FlatButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => personal_inforamtion()));
                        },
                        child: Text('g'),
                        splashColor: Colors.greenAccent,
                      ),
                    ],
                  ),
                ),
              
            ),

          ],
        ),
      ),
    );
  }
}

class personal_inforamtion extends StatefulWidget {
  @override
  _personal_inforamtionState createState() => _personal_inforamtionState();
}

class _personal_inforamtionState extends State<personal_inforamtion> {
  String firstname='Jarugumalli';
  String lastname='Venkat Sai Divya Charan';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Settings'),
        backgroundColor: Colors.deepOrange,
      ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.black26,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("First Name",style: TextStyle(fontSize: 20),),
                ),
               // SizedBox(height: 3,),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(firstname,style: TextStyle(fontSize: 20),textAlign: TextAlign.start,),
                    ),
                   // SizedBox(width: 300,),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Last Name",style: TextStyle(fontSize: 20),),
                ),
                // SizedBox(height: 3,),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(lastname,style: TextStyle(fontSize: 20),textAlign: TextAlign.start,),
                    ),
                   // SizedBox(width: 280,),
                  ],
                ),

              ],
            ),
          ),
        ),
    );
  }
}
class upload_documents extends StatefulWidget {
  @override
  _upload_documentsState createState() => _upload_documentsState();
}

class _upload_documentsState extends State<upload_documents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Documents'),
      ),
      body: Center(
        child: Text('upload documents'),
      ),
    );
  }
}

class address extends StatefulWidget {
  @override
  _addressState createState() => _addressState();
}

class _addressState extends State<address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Address'),
      ),
      body: Center(
        child: Text('Your Address'),
      ),
    );
  }
}

