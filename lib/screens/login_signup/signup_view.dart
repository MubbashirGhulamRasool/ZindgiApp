import 'package:flutter/material.dart';
import 'package:zindgibloodapp/screens/login_signup/login_view.dart';
import 'package:zindgibloodapp/screens/login_signup/phone_number.dart';

import '../../colors.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {

    TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

 void login() {
    String username = usernameController.text;
    String password = passwordController.text;

    // if (username == "admin" && password == "123") {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => PhoneNumberView(),
      ),
    );
    // } else {
    //   Fluttertoast.showToast(
    //     msg: "Invalid Email And Password",
    //     toastLength: Toast
    //         .LENGTH_SHORT, // Duration for the toast (Toast.LENGTH_SHORT or Toast.LENGTH_LONG)
    //     gravity: ToastGravity.BOTTOM, // Location where the toast should appear
    //     timeInSecForIosWeb: 3, // Time for iOS (ignored on Android)
    //     backgroundColor:
    //         Colors.black.withOpacity(0.7), // Background color of the toast
    //     textColor: Colors.white, // Text color of the toast
    //     fontSize: 16.0, // Font size of the toast message
    //   );
    // }
  }

   signup(){
       Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SignupView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Color(0xFFEB3738), // Use the appropriate color code
                    height: 300,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 100,
                          child: Image.asset('assets/splash_image.png'),
                        ),
                        Text(
                          "ZINDGI",
                          style: TextStyle(
                            color: Colors.white, // Set the text color as needed
                            fontFamily: "Quando",
                            fontSize: 24.0, // Adjust the font size
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100),
                  Container(
                    height: 350,
                    color: Colorconstant.whiteColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Don`t Have An Account'),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return LoginView();
                                  }));
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colorconstant.red),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: h * 0.26,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Container(
                  height: h * 0.45,
                  width: w * 0.85,
                  decoration: BoxDecoration(
                    color: Colorconstant.whiteColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colorconstant.red,
                          blurRadius: 15,
                          spreadRadius: 0,
                          offset: Offset(4, 4)),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: h * 0.05, left: w * 0.07, right: w * 0.07),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        TextField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            labelText: 'Username', // Label for the text field
                            hintText:
                                'Enter your username', // Hint text when the field is empty
                            prefixIcon:
                                Icon(Icons.person), // Prefix icon (optional)
                            suffixIcon: IconButton(
                              icon: Icon(Icons.clear), // Suffix icon (optional)
                              onPressed: () {
                                usernameController.clear();
                              },
                            ),
                            border: OutlineInputBorder(
                              // Border styling
                              borderRadius: BorderRadius.circular(
                                  10.0), // Rounded corners
                              borderSide: BorderSide(
                                color: Colorconstant.blackColor, // Border color
                                width: 2.0, // Border width
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              // Border styling when focused
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colorconstant
                                    .whiteColor, // Focused border color
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        TextField(
                          controller: passwordController,
                          obscureText: true,
                          // autofocus: true,
                          decoration: InputDecoration(
                            labelText: 'Password', // Label for the text field
                            hintText:
                                'Enter your Password', // Hint text when the field is empty
                            prefixIcon:
                                Icon(Icons.key), // Prefix icon (optional)
                            suffixIcon: IconButton(
                              icon: Icon(Icons.clear), // Suffix icon (optional)
                              onPressed: () {
                                passwordController.clear();
                              },
                            ),
                            border: OutlineInputBorder(
                              // Border styling
                              borderRadius: BorderRadius.circular(
                                  10.0), // Rounded corners
                              borderSide: BorderSide(
                                color: Colorconstant.blackColor, // Border color
                                width: 2.0, // Border width
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              // Border styling when focused
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colorconstant
                                    .whiteColor, // Focused border color
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: h * 0.67,
              left: w * 0.186,
              //  right: w*0.1,
              child: ElevatedButton(
                onPressed: login, // Function to call when the button is pressed
                style: ElevatedButton.styleFrom(
                  primary: Colorconstant.red, // Background color of the button
                  onPrimary:
                      Colorconstant.whiteColor, // Text color of the button
                  elevation: 3, // Shadow elevation
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 20, vertical: 12), // Button padding
                ),
                child: Text(
                  "Sign Up", // Button text
                  style: TextStyle(
                    fontSize: 16, // Text font size
                    fontWeight: FontWeight.bold, // Text font weight
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Widget _gap(context) {
  //   final h = MediaQuery.sizeOf(context).height;
  //   return SizedBox(
  //     height: h * 0.02,
  //   );
  // }
}