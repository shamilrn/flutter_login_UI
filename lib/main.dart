import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),

    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),) ,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Image.asset("assets/3d-illustration-computer-monitor-login-screen.jpg"),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
        
                      ),
                      labelText: "Username/e-mail",
                      hintText: "Enter your username or email",
                    ),
        
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
        
                      ),
                      labelText: "Password",
                      hintText: "Enter your password",
                    ),
        
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        elevation: 15,
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
        
                      ),
                      child: Text("LOGIN")
                  ),
                ),
                SizedBox(),
                TextButton(onPressed: (){},
                    child: Text("Forgot your password?", style: TextStyle(color: Colors.blue),)
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   SizedBox(
                       height: 60,
                       width: 60,
                       child: IconButton(onPressed: (){}, icon: Image.asset("assets/google_2504739.png") )
                   ),
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: IconButton(onPressed: (){}, icon: Image.asset("assets/facebook_2504903.png") )
                    ),
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: IconButton(onPressed: (){}, icon: Image.asset("assets/twitter_5968958.png") )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
