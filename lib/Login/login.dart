import 'package:flutter/material.dart';
import 'package:internship/Login/admin.dart';
import 'package:internship/Login/home-screen.dart';
import 'package:internship/Login/student.dart';
import 'package:internship/Login/teacher.dart';
import 'package:internship/Practice/components/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  List<String> users = ["Admin", "Student", "Teacher"];
  String? user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Username or Email",
                  hintStyle: TextStyle(fontSize: 12, color: textColor),
                  prefixIcon: Icon(Icons.person, color: textColor),
                  filled: true,
                  fillColor: fillColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: borderColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: borderColor, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: borderColor, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Age",
                  hintStyle: TextStyle(fontSize: 12, color: textColor),
                  prefixIcon: Icon(Icons.person, color: textColor),
                  filled: true,
                  fillColor: fillColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: borderColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: borderColor, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: borderColor, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: textColor,
                  ),
                  hintStyle: TextStyle(color: textColor, fontSize: 12),
                  prefixIcon: Icon(Icons.lock, color: textColor),
                  filled: true,
                  fillColor: fillColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: borderColor, width: 10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: borderColor, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: borderColor, width: 2),
                  ),
                ),
              ),

              SizedBox(height: 4),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: pinkColor, fontSize: 12),
                ),
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: user,
                    items: users
                        .map(
                          (value) => DropdownMenuItem(
                            child: Text(value),
                            value: value,
                          ),
                        )
                        .toList(),
                    onChanged: (newValue) {
                      setState(() {
                        user=newValue as String?;
                      });
                    },
                    hint: Text("Select User Type"),
                  ),
                ),
              ),

              SizedBox(height: 20),
              InkWell(
                onTap: () async {
                  SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.setString("email", _emailController.text.toString());
                  sp.setString("age", _ageController.text.toString());
                  sp.setString("userType", user!);
                  sp.setBool("isLogin", true);
                  if(user=="Student"){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Student()));
                  }
                  else if(user=="Teacher"){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Teacher()));
                  }
                  else{
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Admin()));

                  }
                },
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: pinkColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "- OR continue with -",
                style: TextStyle(color: borderColor, fontSize: 12),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.facebook, color: Colors.blueAccent),
                  ),
                  SizedBox(width: 5),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite, color: Colors.redAccent),
                  ),
                  SizedBox(width: 5),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.whatshot, color: Colors.green),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: textColor, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
