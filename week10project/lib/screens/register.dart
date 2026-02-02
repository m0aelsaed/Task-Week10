import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController Name_Controller = TextEditingController();
  TextEditingController Email_Controller = TextEditingController();
  TextEditingController Passwordcontroler2 = TextEditingController();
  TextEditingController confirm_Passwordcontroler2 = TextEditingController();
  int value1 = 0;
  int value2 = 0;
  final registerSuccess_Key = GlobalKey<FormState>();
  String confirm = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Text(
            "SignUp",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
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
                    Text("Sign Up with Google"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "-------------------------------------- or sign in with --------------------------------------",
            ),
            SizedBox(height: 40),
            Form(
              key: registerSuccess_Key,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 700,
                    child: TextFormField(
                      controller: Name_Controller,
                      decoration: InputDecoration(
                        labelText: "Full Name",
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
                          return "Name can't be empty";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    height: 50,
                    width: 700,
                    child: TextFormField(
                      controller: Email_Controller,
                      decoration: InputDecoration(
                        labelText: "Email Address",
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
                  SizedBox(height: 12),
                  Container(
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
                          return "Password can't be empty";
                        }
                        if (value.length < 6) {
                          return "Password must be more than 6 numbers";
                        }
                        if (value.length < 6 && value.isNotEmpty) {
                          confirm = value;
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    height: 50,
                    width: 700,
                    child: TextFormField(
                      controller: confirm_Passwordcontroler2,
                      decoration: InputDecoration(
                        labelText: "Confirn Password",
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
                          return "Password can't be empty";
                        }
                        if (value.length < 6) {
                          return "Password must be more than 6 numbers";
                        }
                        if (value != confirm) {
                          return "the confirm and password must be same";
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 400,
              child: ElevatedButton(
                onPressed: () {
                  if (registerSuccess_Key.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('SignUp successful!'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                    Navigator.pushNamed(context, "/login");
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text("SignUp", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an Account?"),
                InkWell(
                  child: Text(
                    "SignIn Here",
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/login");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
