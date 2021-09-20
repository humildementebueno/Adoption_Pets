import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: const DecorationImage(
            image: NetworkImage(
                'https://th.bing.com/th/id/R.f633939681193c9c3e37328df2421dc2?rik=rYPtas302MCWNA&pid=ImgRaw&r=0'),
            fit: BoxFit.fitHeight,
          ),
          border: Border.all(
            color: Colors.black,
            width: 8,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                color: Colors.white24,
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      //alignment: Alignment.topLeft,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.amber,
                              size: 35,
                            ),
                            Icon(
                              Icons.g_mobiledata_outlined,
                              color: Colors.amber,
                              size: 35,
                            ),
                            Icon(
                              Icons.account_box,
                              color: Colors.amber,
                              size: 35,
                            ),
                          ],
                        ),
                        Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.account_box,
                          color: Colors.amber,
                        ),
                        Container(
                          width: 200,
                          child: TextField(
                            controller: user,
                            decoration: InputDecoration(
                              hoverColor: Colors.white,
                              fillColor: Colors.amberAccent,
                              hintText: "User",
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.vpn_key_rounded, color: Colors.amber),
                        Container(
                          width: 200,
                          child: TextField(
                            controller: password,
                            decoration: InputDecoration(
                              hintText: "Password",
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RaisedButton(
                            child: Text("Login"),
                            color: Colors.amberAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            onPressed: () {}),
                      ],
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "Dont't have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Sign Up Forgot your password?",
                            style: TextStyle(color: Colors.blue),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /*
            Container(
              color: Colors.black26,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "hola mundo",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextField(
                      controller: user,
                      decoration: InputDecoration(
                        fillColor: Colors.amberAccent,
                        hintText: "User",
                      ),
                    ),
                    TextField(
                      controller: password,
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          */
          ],
        ),
      ),
    );
  }
}
