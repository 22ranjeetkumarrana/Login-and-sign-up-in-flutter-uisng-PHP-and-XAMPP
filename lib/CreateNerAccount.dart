import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_login_sign/Login_And_Register.dart';
import 'package:http/http.dart' as http;

class CreateNerAccount extends StatefulWidget {
  @override
  _CreateNerAccountState createState() => _CreateNerAccountState();
}


class _CreateNerAccountState extends State<CreateNerAccount>
{

  bool visible = false;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context)
  {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff000b27),
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Create New Account',
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
                      'Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0
                      ),
                    ),
                    SizedBox(height: screenSize.height*0.03,),
                    TextFormField(
                      validator: (val) => val.isEmpty? 'Name can\'t be empty.' : null,
                      controller: _nameController,
                      autocorrect: true,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 3.0
                      ),
                      decoration: InputDecoration(
                          labelText: 'Name: ',
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
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.5
                              ),
                              borderRadius: BorderRadius.circular(15.0)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.5
                              )
                          )
                      ),
                    ),
                    SizedBox(height: screenSize.height*0.03,),
                    TextFormField(
                      controller: _emailController,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Email can\'t be empty';
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
                          letterSpacing: 3.0
                      ),
                      decoration: InputDecoration(
                          labelText: 'Email: ',
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
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.5
                              ),
                              borderRadius: BorderRadius.circular(15.0)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.5
                              )
                          )
                      ),
                    ),
                    SizedBox(height: screenSize.height*0.03,),
                    TextFormField(
                      validator: (val)=>val.isEmpty?'Password can\'t be empty':null,
                      controller: _passwordController,
                      autocorrect: true,
                      obscureText: true,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 3.0
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
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.5
                              ),
                              borderRadius: BorderRadius.circular(15.0)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.5
                              )
                          )
                      ),
                    ),
                    SizedBox(height: screenSize.height*0.03,),
                    TextFormField(
                      validator: (val){
                        if(val.isEmpty)
                          {
                            return 'Phone number can\'t be empty';
                          }
                        if(val.length<9 || val.length>10)
                          {
                            return 'Enter valid phone number';
                          }
                        return null;
                      },
                      controller: _phoneController,
                      autocorrect: true,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 3.0,
                      ),
                      decoration: InputDecoration(
                          labelText: 'Phone Number: ',
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
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.5
                              ),
                              borderRadius: BorderRadius.circular(15.0)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.5
                              )
                          )
                      ),
                    ),
                    SizedBox(height: screenSize.height*0.04,),
                    InkWell(
                      onTap: (){
                        if(formKey.currentState.validate())
                          {
                            Create();
                          }
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
                            'Register',
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

  Future Create() async {
    var url = 'http://60e345578115.ngrok.io/login_and_signup.php';

    Map data = {
      'Name':_nameController.text,
      'Email':_emailController.text,
      'Password':_passwordController.text,
      'Phone':_phoneController.text
  };

    http.Response response = await http.post(url,body: data);
    var result = jsonDecode(jsonEncode(response.body));
    print("Data: ${result}");
  }
}
