import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_login_sign/CreateNerAccount.dart';
import 'package:flutter_app_login_sign/HomeScreen.dart';

class Login_And_Register extends StatefulWidget {
  @override
  _Login_And_RegisterState createState() => _Login_And_RegisterState();
}



class _Login_And_RegisterState extends State<Login_And_Register> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void _Create() {
    final isValid = formKey.currentState.validate();
    if (isValid) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    }
    formKey.currentState.save();
  }


  @override
  Widget build(BuildContext context)
  {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff000b27),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.0
          ),
        ),
      ),
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: Color(0xff000b27),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Form(
              key: formKey,
              child: Container(
                margin: EdgeInsets.all(screenSize.width*0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0
                      ),
                    ),
                    SizedBox(height: screenSize.height*0.03,),
                    TextFormField(
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Email is Required';
                        }
                        if (!RegExp(
                            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                            .hasMatch(value)) {
                          return 'Please enter a valid email Address';
                        }
                        return null;
                      },
                      autocorrect: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 3.0,
                      ),
                      decoration: InputDecoration(
                          labelText: 'Email: ',
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0
                          ),
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors.white
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.5
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.5
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          )
                      ),
                    ),
                    SizedBox(height: screenSize.height*0.04,),
                    TextFormField(
                      validator: (val) => val.isEmpty? 'Password can\'t be empty.' : null,
                      autocorrect: true,
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 3.0,
                      ),
                      decoration: InputDecoration(
                          labelText: 'Password: ',
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.5
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.5
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.5
                              )
                          )
                      ),
                    ),
                    SizedBox(height: screenSize.height*0.015,),
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0
                      ),
                    ),
                    SizedBox(height: screenSize.height*0.04,),
                    InkWell(
                      onTap: ()=>_Create(),
                      child: Container(
                        width: screenSize.width,
                        height: screenSize.height*0.09,
                        decoration: BoxDecoration(
                            color: Color(0xffffc001),
                            borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenSize.height*0.04,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              child: Divider(
                                color: Colors.white,
                                thickness: 1.5,
                              )
                          ),

                          Text("  OR  ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0
                            ),),
                          Expanded(
                              child: Divider(
                                color: Colors.white,
                                thickness: 1.5,)
                          ),
                        ]
                    ),
                    SizedBox(height: screenSize.height*0.04,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateNerAccount()));
                      },
                      child: Container(
                        width: screenSize.width,
                        height: screenSize.height*0.09,
                        decoration: BoxDecoration(
                            color: Color(0xffffc001),
                            borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Center(
                          child: Text(
                            'Create new account',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ),
        )
      ),
    );
  }
}
