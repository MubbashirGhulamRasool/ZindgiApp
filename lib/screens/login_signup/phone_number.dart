import 'package:flutter/material.dart';
import 'package:zindgibloodapp/screens/login_signup/phone_verification.dart';
import 'package:zindgibloodapp/screens/login_signup/signup_view.dart';

import '../../colors.dart';

class PhoneNumberView extends StatefulWidget {
  const PhoneNumberView({super.key});

  @override
  State<PhoneNumberView> createState() => _PhoneNumberViewState();
}

class _PhoneNumberViewState extends State<PhoneNumberView> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void phoneVerification() {
    String username = usernameController.text;
    String password = passwordController.text;

    // if (username == "admin" && password == "123") {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PhoneVerificationView(),
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
                            const Text('Didn’t get OTP?'),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return PhoneNumberView();
                                  }));
                                },
                                child: Text(
                                  'Resend',
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
                          'PHONE NUMBER',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                          const Text(
                          '“We only need your phone number for authentication purposes and will not contact you otherwise”',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 10),
                              textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        TextField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            labelText: 'Phonr Number', // Label for the text field
                            hintText:
                                'PHONE NUMBER', // Hint text when the field is empty
                            prefixIcon:
                                Icon(Icons.phone), // Prefix icon (optional)
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
                onPressed: phoneVerification, // Function to call when the button is pressed
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
                  "Send", // Button text
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
