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
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)) ),
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
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
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
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
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
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
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
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),)),
                      obscureText: true,
                      onSaved: (input)=>passwordcheck=input,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      child: Text('Sign Up',style: TextStyle(color:Colors.white60),),
                      onPressed: (){},
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


