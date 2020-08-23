import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import '';
void main()
{
  runApp(login());
}
class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainpage(),
      themeMode: ThemeMode.system,
    );
  }
}
class mainpage extends StatefulWidget {
  @override
  _mainpageState createState() => _mainpageState();

}

class _mainpageState extends State<mainpage> {
  final loginstate= GlobalKey<FormState>();
  String email,password,Firstname,Lastname,dob,passwordcheck;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 300,
            child: Form(
              key: loginstate,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Sign In',style: TextStyle(fontSize: 30.0,fontStyle: FontStyle.italic),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,height: 1.3
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(labelText: 'First Name',
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)) ),
                      onSaved: (input)=>Firstname=input,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      //cursorWidth: 4.0,
                      style: TextStyle(
                          fontSize: 20,height: 1.3
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(labelText: 'Last Name',
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
                      onSaved: (input)=>Lastname=input,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      //cursorWidth: 4.0,
                      style: TextStyle(
                          fontSize: 20,height: 1.3
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(labelText:'Email Id',
                          contentPadding: EdgeInsets.all(10),
                          // suffixIcon: IconButton(icon: Icon(Icons.search, color: Colors.black,), onPressed: (){}),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
                      validator: (input) => !input.contains('@') ? 'Not a valid Email' : null,
                      onSaved: (input)=>email=input,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      //cursorWidth: 4.0,
                      style: TextStyle(
                          fontSize: 20,height: 1.3
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(labelText: 'Enter Password',
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
                      validator: (input) => input.length < 8 ? 'You need at least 8 characters' : null,
                      obscureText: true,
                      onSaved: (input)=>password=input,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      //cursorWidth: 4.0,
                      style: TextStyle(
                          fontSize: 20,height: 1.3
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(labelText: 'Re-enter the Password',
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),)),
                      obscureText: true,
                      onSaved: (input)=>passwordcheck=input,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      child: Text('Sign Up',style: TextStyle(color:Colors.white60),),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => dashboard()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
class dashboard extends StatefulWidget{
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Dashboard',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Your dashboard"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
          children: <Widget>[


            Column(
                children: <Widget>[

                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: <Widget>[
                      RaisedButton(

                        color: Colors.tealAccent,
                        child: Text("Donate"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => donate()));
                        },
                      ),
                      ]
                    )
                  ),
                  Container(
                    width: 594,
                    height: 94,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.greenAccent,
                        width: 8,
                      ),
                      borderRadius: BorderRadius.circular(8),

                      color:Colors.lightBlueAccent,


                    ),
                    child: Text(
                      'You donated \$9999999',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, color: Colors.white),


                    ),
                  ),
                  Container(
                    width: 594,
                    height: 600,

                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.lightBlueAccent,
                        width: 8,
                      ),
                      borderRadius: BorderRadius.circular(8),

                      color:Colors.greenAccent,


                    ),
                    child:SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                      Text(
                        "Your donations",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),



                  SingleChildScrollView(
                    child: Container(

                      child: GridView.count(

                        scrollDirection: Axis.vertical,

                        shrinkWrap: true,
                        crossAxisCount: 2,
                        children: new List.generate(20, (index) {
                          return Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => donatebio()));
                              },


                              child: Container(

                                width: 300,
                                height: 300,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white70,
                                    width: 4,
                                  ),
                                  borderRadius: BorderRadius.circular(8),

                                  color:Colors.white70,


                                ),
                                child: Text(
                                  'Person name $index',
                                  textAlign: TextAlign.center,
                                ),



                              ),
                            ),
                          );
                        }),
                      ),
                        ),

                  ),
                      ],
                    ),
                    ),
                  ),
            ]
          ),
        ]
      ),
    ),
    ),
    );
  }
}
class donate extends StatefulWidget {
  @override
  _donateState createState() => _donateState();
}

class _donateState extends State<donate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donate!',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("Donate!"),
          centerTitle: true,
        ),

        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(1000, (index) {
            return Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => donatebio()));
                },


                child: Container(

                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white70,
                      width: 4,
                    ),
                      borderRadius: BorderRadius.circular(8),

                    color:Colors.transparent,


                  ),
                  child: Text(
                    'Person name $index',
                     textAlign: TextAlign.center,
                  ),



              ),
              ),
            );
          }),
        ),
      ),
    );
  }

}
class donatebio extends StatefulWidget {
  @override
  _bioState createState() => _bioState();
}

class _bioState extends State<donatebio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Credit Card info',
        home: Scaffold(
        appBar: AppBar(
        leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Change a Life Today!'),
        centerTitle: true,
        ),
        body:Center(
          child: Text(
            "Credit Card Info processing is not finished"
          )
        )
      ),
    );
  }

}
