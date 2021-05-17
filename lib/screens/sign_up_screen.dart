import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:socket_app/screens/log_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign up screen';

  const SignUpScreen({Key key}) : super(key: key);

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
                  'تسجيل حساب',
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
                          top: mediaQuery.size.height * 0.0419014084507042),
                      child: Image.asset(
                        'assets/images/Documents-cuate.png',
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.size.height * 0.0242394366197183,
                    ),
                    Container(
                      height: mediaQuery.size.height * 0.0554187192118227,
                      width: mediaQuery.size.width * 0.6386666666666667,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'الاسم ',
                          contentPadding: EdgeInsets.all(6),
                          hintStyle: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.size.height * 0.0140845070422535,
                    ),
                    Container(
                      height: mediaQuery.size.height * 0.0554187192118227,
                      width: mediaQuery.size.width * 0.6386666666666667,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintText: 'البريد الالكتروني',
                          contentPadding: EdgeInsets.all(6),
                          hintStyle: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.size.height * 0.0140845070422535,
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
                      height: mediaQuery.size.height * 0.0140845070422535,
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
                    SizedBox(
                      height: mediaQuery.size.height * 0.0112676056338028,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Text(
                            'عربية  ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        InkWell(
                          child: Text(
                            ' إنجليزية ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2,
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
                        mainAxisAlignment: MainAxisAlignment.end,
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
                          Text(
                            'استخدام طرق اخرى للدخول',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: mediaQuery.size.height * 0.0140845070422535,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/apple@3x.png',
                                height:
                                    mediaQuery.size.height * 0.061576354679803,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/images/googlePlus@3x.png',
                                height:
                                    mediaQuery.size.height * 0.061576354679803,
                              )
                            ],
                          ),
                          Container(
                            height: mediaQuery.size.height * 0.0714285714285714,
                            child: Stack(children: [
                              Text(
                                'لديك بالفعل حساب',
                                style:
                                    TextStyle(fontSize: 24, color: Colors.grey),
                              ),
                              Positioned(
                                top: 20,
                                right: 20,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context,
                                        LogInScreen.routeName);
                                  },
                                  child: Text(
                                    'تسجيل دخول ',
                                    style: TextStyle(
                                        fontSize: 25,
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
