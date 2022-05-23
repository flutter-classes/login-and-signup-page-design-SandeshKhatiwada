// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/next_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String _email;
  TextEditingController _password = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.flash_on,
                    size: 35,
                    color: Colors.deepPurple,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "See your growth and get consulting support !",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            width: 1,
                          )),
                      child: Center(
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 45),
                              child: Image.asset(
                                "assets/google.png",
                                height: 50,
                                width: 50,
                              ),
                            ),
                            Text(
                              "Sign In with Google",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                      )),
                ),
                //SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Divider(
                        color: Colors.black,
                      ),
                    )),
                    Text(
                      "or Sign in with Email",
                      style: TextStyle(fontSize: 18),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 14),
                      child: Divider(
                        color: Colors.black,
                      ),
                    )),
                  ],
                ),

                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Email*",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SizedBox(height: 5),
                Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: "main@website.com",
                                contentPadding: const EdgeInsets.only(
                                    left: 30, top: 20, bottom: 20),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Email required*";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            "Password*",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: TextFormField(
                            //autovalidateMode: AutovalidateMode.always,
                            obscureText: true,
                            obscuringCharacter: "*",
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: "********",
                                contentPadding: const EdgeInsets.only(
                                    left: 30, top: 20, bottom: 20),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password required*";
                              }
                              {
                                if (value.length < 8) {
                                  return "Minimum 8 characters required*";
                                }
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Checkbox(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        value: isChecked,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value!;
                                          });
                                        }),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Text(
                                      "Remember me",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Forget Password?",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Theme.of(context).primaryColor,
                            ),
                            child: MaterialButton(
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  Get.to(NextPage());
                                } else {
                                  return null;
                                }
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        //SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
                          child: Row(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Not registered yet?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 45),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Create an Account",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    )),
                              )
                            ],
                          ),
                        ),

                        SizedBox(height: 20),

                        // Container(
                        //     width: double.infinity,
                        //     color: Colors.black,
                        //     ),

                        Container(
                            height: 75,
                            color: Colors.black,
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "©2022 broadwayinfosys All right reserved",
                                style: TextStyle(color: Colors.white),
                              ),
                            ))
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
