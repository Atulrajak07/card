import 'package:flutter/material.dart';
import 'package:card/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ""),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   GlobalKey<FormState> formValidation = GlobalKey<FormState>();
    
    bool checkValue = false;



  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Welcome to Login page"),
      ),
      body:Center(

          
          child: Container(
            width: 500,
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white10,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 201, 204, 202),
                  offset: const Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(0.0,0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ),
              ],
            ),
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Image.asset('assets/leptop.jpg',width: 300,
                   height: 150,
                   ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  Column(

                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 22),
                        child: TextField(
                          obscureText:  false,
                          decoration: InputDecoration(
                            labelText: "Enter name",
                            border: OutlineInputBorder(),
                          ),
                          
                        ),
                      ),

              Container(
                        margin: EdgeInsets.only(bottom: 22),
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: "Enter email-ID ",
                            border:OutlineInputBorder(),

                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(bottom: 22),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: " Enter  Password",
                            border:OutlineInputBorder(),

                          ),
                        ),
                      ),

                       Row(
                children: [
                  Checkbox(
                    activeColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.blue
                        )
                    ),
                    value: checkValue,
                    onChanged: (bool? value) {
                      setState(() {
                        checkValue = value!;
                      });
                    },
                  ),
                  Text(" agree ")
                ],
              ),

                      

                      ElevatedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                              child: (
                              Text("Submit",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                              ),
                            ),
                          ],
                        ),
                        onPressed: (){
                       Navigator.push(context,   MaterialPageRoute(builder: (context) => MyNavigationBar()),);

                        },
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 12, 30, 10),
                        child: Text('OR',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                              child: Row(children: [
                                Image.asset('assets/google.jpg',width:30,
                   height: 20,
                   ),
                                Text(' Signup with Google',
                                  style:TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                        onPressed: (){
                        },

                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.white),
                          shape:MaterialStatePropertyAll(RoundedRectangleBorder(side: BorderSide(color: Colors.black,width: 1,style: BorderStyle.solid),borderRadius: BorderRadius.circular(5),
                          ),

                          ),

                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 12, 30, 10),
                        child: Text('Already have an account?LOGIN',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      
                      )
                    ],
                  ),
                ],
              ),
            ),
           
          ),
        )
    );
  }
}
