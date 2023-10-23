import 'package:flutter/material.dart';
import 'package:zindgibloodapp/screens/login_signup/phone_verification.dart';
import 'package:zindgibloodapp/screens/login_signup/signup_view.dart';

import '../../colors.dart';
import '../login_signup/phone_number.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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

  List items = ['Mubbashir', 'Sameer', 'Ali'];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('JOHAR TOWN, LAHORE'),
        backgroundColor: Colorconstant.red,
        leading: IconButton(
          icon: Icon(Icons.account_circle), // Replace with the desired icon
          onPressed: () {
            // Implement your action here
          },
        ),
      ),
      body: Container(
        color: Colorconstant.red,
        child: ListView.builder(
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount:1 , // Number of columns in the grid
          // ),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.blue, // Set the background color here
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            items[index],
                            style: TextStyle(
                                color: Colors.white), // Set text color
                          ),
                          Text(
                            items[index],
                            style: TextStyle(
                                color: Colors.white), // Set text color
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
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
