import 'package:flutter/material.dart';
import 'package:practice/utils/routes.dart';
import 'package:practice/firstPage.dart';
class LoginPage extends StatefulWidget {
  @override
  State createState() => LoginPageState();
}
class LoginPageState extends State<LoginPage>{
  bool changeButton=false;
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(image: AssetImage("assets/images/img.png"),
          fit: BoxFit.cover,
          color: Colors.black87,
          colorBlendMode: BlendMode.darken,),
          Center(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('WELCOME',
                  style: TextStyle(
                    fontFamily: 'FontMain',
                    color: Colors.teal,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text('Please login to continue...',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.greenAccent
                  ),),
                  SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      style: TextStyle(
                        color: Colors.teal
                      ),
                      decoration: InputDecoration(
                        labelText: 'UserId',
                        labelStyle: TextStyle(
                          color: Colors.greenAccent
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.teal
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.teal
                          )
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return "Password cannot be empty";
                        }
                        else if(value.length<6){
                          return "Password should have atleast 6 characters";
                        }
                      },
                      obscureText: true,
                      style: TextStyle(
                          color: Colors.teal
                      ),
                      decoration: InputDecoration(
                        labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.greenAccent
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.teal
                              )
                          ),


                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    width: 25,
                  ),
                  InkWell(
                    onTap: ()async{
                      if(formKey.currentState!.validate()) {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        await Navigator.pushNamed(context, MyRoutes.page1Route);
                        setState(() {
                          changeButton = false;
                        });
                      }
                    },

                    child: AnimatedContainer(duration: Duration(seconds: 1),
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius:changeButton?BorderRadius.circular(112): BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: changeButton?Icon(Icons.done,color: Colors.white,):Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),),),
                  ),


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
