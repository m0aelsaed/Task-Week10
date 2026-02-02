import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController Emailcontroler = TextEditingController();
  TextEditingController Passwordcontroler2 = TextEditingController();
  int value1 = 0;
  int value2 = 0;
  final Success_Key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Text(
            "Login",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            width: 300,
            height: 50,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(backgroundColor: Colors.white),
              child: Row(
                children: [
                  Image.asset("assets/Images/Button.png"),
                  SizedBox(width: 50),
                  Text("Sign in with Google"),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),
          Text(
            "-------------------------------------- or sign in with --------------------------------------",
          ),
          SizedBox(height: 40),
          Container(
            alignment: Alignment.center,
            child: Form(
              key: Success_Key,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 700,
                    child: TextFormField(
                      controller: Emailcontroler,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: value1 == 1 ? Colors.green : Colors.black,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 143, 195, 238),
                            width: 2,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email can't be empty";
                        }
                        if (!value.contains("@gmail.com")) {
                          return "Write a correct Email";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 700,
                    child: TextFormField(
                      controller: Passwordcontroler2,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: value2 == 1 ? Colors.green : Colors.black,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 143, 195, 238),
                            width: 2,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password can't be empty";
                        }
                        if (value.length < 6) {
                          return "Password must be at least 6 characters";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            width: 400,
            child: ElevatedButton(
              onPressed: () {
                if (Success_Key.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Login successful!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                  Navigator.pushNamed(context, "/register");
                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text("Login", style: TextStyle(color: Colors.white)),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don`t have an Account?"),
              InkWell(
                child: Text(
                  "SignUp Here",
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/register");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
