// // Working application
// import 'package:flutter/material.dart';
// import 'dart:async';
//
// import 'package:flutter/services.dart';
// import 'package:path_provider_ex/path_provider_ex.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   List<StorageInfo> _storageInfo = [];
//
//   @override
//   void initState() {
//     super.initState();
//     initPlatformState();
//   }
//
//   // Platform messages are asynchronous, so we initialize in an async method.
//   Future<void> initPlatformState() async {
//     List<StorageInfo> storageInfo;
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       storageInfo = await PathProviderEx.getStorageInfo();
//     } on PlatformException {}
//
//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;
//
//     setState(() {
//       _storageInfo = storageInfo;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//                 'Internal Storage root:\n ${(_storageInfo.length > 0) ? _storageInfo[0].rootDir : "unavailable"}\n'),
//             Text(
//                 'Internal Storage appFilesDir:\n ${(_storageInfo.length > 0) ? _storageInfo[0].appFilesDir : "unavailable"}\n'),
//             Text(
//                 'Internal Storage AvailableGB:\n ${(_storageInfo.length > 0) ? _storageInfo[0].availableGB : "unavailable"}\n'),
//             Text(
//                 'SD Card root: ${(_storageInfo.length > 1) ? _storageInfo[1].rootDir : "unavailable"}\n'),
//             Text(
//                 'SD Card appFilesDir: ${(_storageInfo.length > 1) ? _storageInfo[1].appFilesDir : "unavailable"}\n'),
//             Text(
//                 'SD Card AvailableGB:\n ${(_storageInfo.length > 1) ? _storageInfo[1].availableGB : "unavailable"}\n'),
//           ],
//         ) ,
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main()
{
  runApp(recipient());
}
class recipient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:loginpage(),
      theme: ThemeData.dark(),
      themeMode: ThemeMode.system,
    );
  }
}
class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: FlatButton(
          child: Text('Sign up'),
          onPressed: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> home()));
          },
        ),
      ),
    );
  }
}

class home extends StatefulWidget {

  @override
  _homeState createState() => _homeState();
}
class _homeState extends State<home> {
  DateTime _dateTime;
  String firstname,lastname,addressline1,addressline2,city,state,country;
  String dropdownvalue='Select Gender';
  bool checkstate= false;
  final recipientsignuppersonaldetails = GlobalKey<FormState>();
  final recipientsignupaddress=GlobalKey<FormState>();
  validateform()
  {
    print("Validating Form...");
    if (recipientsignuppersonaldetails.currentState.validate()&&recipientsignupaddress.currentState.validate()&&(checkstate==true)&&(dropdownvalue !='Select Gender')) {
      print("Validation Successful");
      recipientsignuppersonaldetails.currentState.save();
      recipientsignupaddress.currentState.save();
      print('Name $firstname');
      print('Name $lastname');
      print("Address $addressline1");
      print("Address $addressline2");
      print("City $city");
      print("state $state");
      print("country $country");
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => recipienthomepage()),);
    }
    else
    {
      print("Validation Error");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipient Form'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Please Enter Your Details',style: TextStyle(fontSize: 18.1,fontStyle: FontStyle.italic),),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: recipientsignuppersonaldetails,
                  child: Container(
                    //height: 310,
                    //width:600,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black87,)
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Personal Details'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            //cursorWidth: 4.0,
                            style: TextStyle(
                                fontSize: 17,height: 1.1
                            ),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(labelText:'First Name',
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                            onSaved: (input)=>firstname=input,
                            validator: (input) => input.length == 0 ? "Enter Name" : null,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(

                            style: TextStyle(
                                fontSize: 17,height: 1.1
                            ),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(labelText:'Last Name',
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                            onSaved: (input)=>lastname=input,
                            validator: (input) => input.length == 0 ? "Enter Name" : null,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 17,height: 1.1
                            ),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                labelText:'Date Of Birth',
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular((20))),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.calendar_today,
                                    size: 25,
                                  ),
                                  onPressed: (){
                                    showDatePicker(context: (context),  firstDate: DateTime(1950), lastDate: DateTime.now(), initialDate: DateTime.now()).then((date) { setState((){_dateTime=date;});});
                                  },
                                )
                            ),
                          ),
                        ),
                        Text(_dateTime.toString()),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
//
                            child: DropdownButtonFormField(
                              value: dropdownvalue,
                              onChanged: (String newvalue){setState(() {
                                dropdownvalue=newvalue;
                                print(dropdownvalue);
                              });},
                              items: <String>['Select Gender', 'Male', 'Female', 'Others']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Form(
              key: recipientsignupaddress,
              child: Container(
                //height: 360,
                //width: 400,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black87,)
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Address",textAlign: TextAlign.center,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Address Line1',
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        onSaved: (input)=>addressline1=input,
                        validator: (input) => input.length == 0 ? "Enter Correct Address" : null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration:InputDecoration(
                          labelText: 'Address Line2',
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        onSaved: (input)=>addressline2=input,
                        validator: (input) => input.length == 0 ? "Enter Correct Address" : null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'City',
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        onSaved: (input)=>city=input,
                        validator: (input) => input.length == 0 ? "Please Enter City Name" : null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'State/Province',
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        onSaved: (input)=>state=input,
                        validator: (input) => input.length == 0 ? "Please Enter State/Province" : null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Country',
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        ),
                        onSaved: (input)=>country=input,
                        validator: (input) => input.length == 0 ? "Please Enter Your Country Name" : null,
                      ),
                    ),


                  ],
                ),
              ),
            ),
            CheckboxListTile(
              title: Text('I agree to all terms and conditions'),
              controlAffinity: ListTileControlAffinity.leading,
              value: checkstate,
              onChanged: (bool value) {setState(() {
                checkstate=value;
                print(checkstate);
              });},
              activeColor: Colors.blue,
              checkColor: Colors.black,

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: FloatingActionButton(
                  onPressed: (){
                    validateform();

                  },
                  child: Text('Submit'),
                  splashColor: Colors.white60,
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

class recipienthomepage extends StatefulWidget {
  @override
  _recipienthomepageState createState() => _recipienthomepageState();
}

class _recipienthomepageState extends State<recipienthomepage> {
  final tabs=[
    barhomepage(),
    barstatus(),
    barprofile(),
  ];
  int  indexvalue =0;
  changeindex(int index)
  {
    setState(() {
      indexvalue=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:tabs[indexvalue],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexvalue,
          onTap: changeindex,
          backgroundColor: Colors.deepOrange,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.lightGreenAccent,

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.blur_circular),
              title: Text('Status'),
              backgroundColor: Colors.teal,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.blueAccent,
            ),
          ]
      ),
    );
  }
}


class barhomepage extends StatefulWidget {
  @override
  _barhomepageState createState() => _barhomepageState();
}

class _barhomepageState extends State<barhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        height: 170,
        width: 400,
        color: Colors.yellow,
        child: Text('ad',textAlign: TextAlign.center,),
      ),
    );
  }
}

class barstatus extends StatefulWidget {
  @override
  _barstatusState createState() => _barstatusState();
}

class _barstatusState extends State<barstatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin:  Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blueAccent,Colors.lightBlueAccent,Colors.lightBlue,Colors.blue],
                ),
              ),
              child: Container(
                height: 400,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://i.insider.com/589dbb873149a101788b4c85?width=1100&format=jpeg&auto=webp'),
                      radius: 45,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Samsung India',style: TextStyle(fontSize: 20),),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      //color: Colors.blueAccent,
                      //shape: ,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(width:50),
                              Text("Score",style: TextStyle(fontSize: 17),),
                              SizedBox(width: 50,),
                              Text("Age",style: TextStyle(fontSize: 17),),
                              SizedBox(width: 50,),
                              Text('Gender',style: TextStyle(fontSize: 17),),
                              SizedBox(width: 50,),
                              Text('Country',style: TextStyle(fontSize: 17),),
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: <Widget>[
                              SizedBox(width:50),
                              Text("4.0/5.0",style: TextStyle(fontSize: 14),),
                              SizedBox(width: 55,),
                              Text("15",style: TextStyle(fontSize: 14),),
                              SizedBox(width: 67,),
                              Text('MALE',style: TextStyle(fontSize: 14),),
                              SizedBox(width: 69,),
                              Text('INDIA',style: TextStyle(fontSize: 14),),
                            ],
                          ),
                        ],
                      ),

                    ),

                  ],
                ),
              ),
            ),
            // Text("Hello",style: TextStyle(fontSize: 23),),
            Card(
              color: Colors.white70,
              child:ListTile(
                title: Text("PROBLEM STATEMENT NAME 0",style: TextStyle(fontSize: 20),),
                subtitle: Text('STATUS OF PROBLEM'),// APPLICATION PENDING OR REJECTED OR MONEY RECIEVED OR DONATION ACCOMPLISHED
                onTap: (){},//TAP TO LEARN MORE
              ) ,
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white70,
              child:ListTile(
                title: Text('PROBLEM STATEMENT NAME 1 ',style: TextStyle(fontSize: 20),),
                subtitle: Text('STATUS OF PROBLEM',),// APPLICATION PENDING OR REJECTED OR MONEY RECIEVED OR DONATION ACCOMPLISHED
                onTap: (){},//TAP TO LEARN MORE
              ) ,
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white70,
              child:ListTile(
                title: Text('PROBLEM STATEMENT NAME 2 ',style: TextStyle(fontSize: 20),),
                subtitle: Text('STATUS OF PROBLEM'),// APPLICATION PENDING OR REJECTED OR MONEY RECIEVED OR DONATION ACCOMPLISHED
                onTap: (){},//TAP TO LEARN MORE
              ) ,
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white70,
              child:ListTile(
                title: Text('PROBLEM STATEMENT NAME 3 ',style: TextStyle(fontSize: 20),),
                subtitle: Text('STATUS OF PROBLEM'),// APPLICATION PENDING OR REJECTED OR MONEY RECIEVED OR DONATION ACCOMPLISHED
                onTap: (){},//TAP TO LEARN MORE
              ) ,
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white70,
              child:ListTile(
                title: Text('PROBLEM STATEMENT NAME 4',style: TextStyle(fontSize: 20),),
                subtitle: Text('STATUS OF PROBLEM'),// APPLICATION PENDING OR REJECTED OR MONEY RECIEVED OR DONATION ACCOMPLISHED
                onTap: (){},//TAP TO LEARN MORE
              ) ,
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white70,
              child:ListTile(
                title: Text('PROBLEM STATEMENT NAME 5',style: TextStyle(fontSize: 20),),
                subtitle: Text('STATUS OF PROBLEM'),// APPLICATION PENDING OR REJECTED OR MONEY RECIEVED OR DONATION ACCOMPLISHED
                onTap: (){},//TAP TO LEARN MORE
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
class barprofile extends StatefulWidget {
  @override
  _barprofileState createState() => _barprofileState();

}

class _barprofileState extends State<barprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'),
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Align(
                alignment: Alignment(-0.9,0.6),
                child: CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                  radius: 30,
                ),
              ),
              Align(child: Card(child:Text("Welcome User",style:TextStyle(fontSize: 20),)),alignment: Alignment(0,-1),),
            ],
          ),
          Divider(),
          Align(child: Text('Account Settings',style: TextStyle(fontSize: 20,),),alignment: Alignment(-0.8,0.23),),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black87,)
              ),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: (){},
                    splashColor: Colors.greenAccent,
                    child: Text('a'),
                    shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        side: BorderSide(color: Colors.red)
                    ),
                  ),
                  FlatButton(
                    onPressed: (){},
                    child: Text('b'),
                    splashColor: Colors.greenAccent,
                    //shape: ,
                  ),
                  FlatButton(
                    onPressed: (){},
                    child: Text('c'),
                    splashColor: Colors.green,
                    //shape: ,
                  ),
                  FlatButton(
                    onPressed: (){},
                    child: Text('d'),
                    splashColor: Colors.greenAccent,
                  ),

                ],
              ),
            ),
          ),
          Align(child: Text('Bank Account',style: TextStyle(fontSize: 20),),alignment: Alignment(-0.8,0.23),),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black87,),
              ),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: (){},
                    child: Text('e'),
                    splashColor: Colors.greenAccent,
                  ),
                  FlatButton(
                    onPressed: (){},
                    child: Text('f'),
                    splashColor: Colors.greenAccent,
                  ),
                  FlatButton(
                    onPressed: (){},
                    child: Text('g'),
                    splashColor: Colors.greenAccent,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

