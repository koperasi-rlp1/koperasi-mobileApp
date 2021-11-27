import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_task_planner_app/animation/fade.dart';
import 'package:flutter_task_planner_app/screens/home_page.dart';
import 'package:flutter_task_planner_app/screens/sign_up.dart';
import 'package:flutter_task_planner_app/theme/colors/light_colors.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  SignInPageView createState() => SignInPageView();
}

class SignInPageView extends State<SignInPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background-4.png'),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(
                            1.5,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-1.png'))),
                            ))),
                    Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.5,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-2.png'))),
                            ))),
                    Positioned(
                        right: 40,
                        top: 20,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.8,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/logo-2.png'))),
                            ))),
                    Positioned(
                        child: FadeAnimation(
                            1.2,
                            Container(
                              margin: EdgeInsets.only(top: 70),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: LightColors.kLightYellow,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ))),
                    Positioned(
                        child: FadeAnimation(
                            1.3,
                            Container(
                              margin: EdgeInsets.only(top: 170),
                              child: Center(
                                child: Text(
                                  "Koperasi SKMN 4 Bandung",
                                  style: TextStyle(
                                      color:
                                          LightColors.kLightYellow.withOpacity(1),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            )))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Column(children: <Widget>[
                  FadeAnimation(
                      1.3,
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: LightColors.kLightYellow,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: Colors.grey[100]))),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Username",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                obscureText: true,
                                enableSuggestions: false,
                                autocorrect: false,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400])),
                              ),
                            )
                          ],
                        ),
                      )),
                  SizedBox(height: 30),
                  FadeAnimation(
                      1.3,
                      GestureDetector(
                          child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Color.fromRGBO(255, 153, 51, .8),
                                    Color.fromRGBO(255, 153, 51, .5)
                                  ])),
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          })),
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                      child: Row(children: <Widget>[
                    Text("Don't have an account ?",
                        style: TextStyle(
                            fontSize: 12, color: LightColors.kDarkYellow)),
                    SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      child:Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 12, color: LightColors.kDarkYellow),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                      },
                    )
                  ])),
                  SizedBox(height: 70),
                  GestureDetector(
                    child:  Text(
                      "Forgot Password ?",
                      style: TextStyle(color: LightColors.kDarkYellow),
                    ),
                    onTap:() {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => SignUpPage()),
                            // );
                          } 
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }
}
