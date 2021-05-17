import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:socket_app/screens/sign_up_screen.dart';

class LogInScreen extends StatelessWidget {
  static const routeName = '/log in screen ';

  const LogInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Stack(children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/4853430.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'تسجيل الدخول',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: (mediaQuery.size.height - mediaQuery.padding.top),
                child: Card(
                  margin: EdgeInsets.only(
                      top: mediaQuery.size.height * 0.125615763546798),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: mediaQuery.size.height * 0.0832112676056338),
                      child: Container(
                        width: mediaQuery.size.width * 0.5714933333333333,
                        height: mediaQuery.size.height * 0.2499014778325123,
                        child: Image.asset(
                          'assets/images/Group 1883.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.size.height * 0.0073891625615764,
                    ),
                    Container(
                      height: mediaQuery.size.height * 0.0554187192118227,
                      width: mediaQuery.size.width * 0.6386666666666667,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'رقم الجوال',
                          contentPadding: EdgeInsets.all(6),
                          hintStyle: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.size.height * 0.0123152709359606,
                    ),
                    Container(
                      height: mediaQuery.size.height * 0.0554187192118227,
                      width: mediaQuery.size.width * 0.6386666666666667,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: EdgeInsets.all(6),
                          hintText: 'كلمة المرور',
                          hintStyle: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: mediaQuery.size.width * 0.5093333333333333),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: mediaQuery.size.width * 0.4906666666666667,
                        height: mediaQuery.size.height * 0.04064039408867,
                        child: Text(
                          'نسيت كلمة المرور',
                          style: TextStyle(
                            fontSize: 21,
                            color: HexColor('#6e8ad5'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.size.height * 0.028,
                    ),
                    Stack(children: [
                      Container(
                        child: Image.asset(
                          'assets/images/freepik.png',
                          fit: BoxFit.cover,
                        ),
                        width: mediaQuery.size.width,
                        height: mediaQuery.size.height * 0.3032019704433498,
                      ),
                      Column(
                        //    mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Center(
                            child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                height:
                                    mediaQuery.size.height * 0.0554187192118227,
                                width:
                                    mediaQuery.size.width * 0.6386666666666667,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: HexColor('#6e8ad5'),
                                ),
                                child: Text(
                                  'تسجيل الدخول',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: mediaQuery.size.height * 0.0073891625615764,
                          ),
                          Text(
                            'استخدام طرق اخرى للدخول',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: mediaQuery.size.height * 0.020935960591133,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/apple@3x.png',
                                fit: BoxFit.cover,
                                height:
                                    mediaQuery.size.height * 0.061576354679803,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/images/googlePlus@3x.png',
                                fit: BoxFit.cover,
                                height:
                                    mediaQuery.size.height * 0.061576354679803,
                              )
                            ],
                          ),
                          Container(
                            height: mediaQuery.size.height * 0.0914285714285714,
                            child: Stack(children: [
                              Text(
                                'ليس لديك حساب ؟ ',
                                style:
                                    TextStyle(fontSize: 25, color: Colors.grey),
                              ),
                              Positioned(
                                top: 20,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                SignUpScreen()));
                                  },
                                  child: Text(
                                    'تسجيل حساب جديد ',
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: HexColor('#6E8AD5')),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ]),
                  ]),
                ),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}
