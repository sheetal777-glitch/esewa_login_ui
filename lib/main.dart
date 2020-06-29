import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Image.asset('images/sewa.png',height: 50, fit: BoxFit.cover),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Welcome,',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.grey.shade600,
                  ),
                ),
                Text(
                  'Sign in to continue,',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text('eSewa ID(Mobile/Email)',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                    hintText: 'Email or mobile',
                    fillColor: Color(0xFFF6F6F6),
                    filled: true,
                    contentPadding: EdgeInsets.all(5),
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Password/MPIN',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                    fillColor: Color(0xFFF6F6F6),
                    filled: true,
                    contentPadding: EdgeInsets.all(5),
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.green,
                      value: true,
                      onChanged: (bool value) {},
                    ),
                    Text(
                      'Remember Me',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Forgot MPIN ? ',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 350,
                  child: RaisedButton(
                      color: Colors.green,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {}),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      'images/fingerprint.png',
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Touch here to use fingerprint sensor to',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'login',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Register for free',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
