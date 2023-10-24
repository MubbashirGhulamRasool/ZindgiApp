import 'package:flutter/material.dart';
import 'package:zindgibloodapp/screens/home/donor/donor_details.dart';
import 'package:zindgibloodapp/screens/home/manager/namager_profile_view.dart';
import 'package:zindgibloodapp/screens/login_signup/phone_verification.dart';
import 'package:zindgibloodapp/screens/login_signup/signup_view.dart';

import '../../colors.dart';
import '../login_signup/phone_number.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class Contact {
  final String name;
  final String city;
  final String phone;
  final String date;
  final String address;

  Contact(this.name, this.city, this.phone, this.date, this.address);
}

class _HomeViewState extends State<HomeView> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void phoneVerification() {
    // String username = usernameController.text;
    // String password = passwordController.text;

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

  final List<Contact> contacts = [
    Contact('John Doe', 'New York', '123-456-7890', '2023-10-23', 'A+'),
    Contact('Jane Smith', 'Los Angeles', '987-654-3210', '2023-10-24', 'B-'),
    Contact('Alice Johnson', 'Chicago', '555-123-4567', '2023-10-25', 'O+'),
    // Add more contacts as needed
  ];

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
        // color: Colorconstant.red,
        // margin: EdgeInsets.all(10.0), // Add margin on all sides
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              // Wrap each item in a Container
              margin:
                  EdgeInsets.all(10.0), // Add margin on all sides for each item
              decoration: BoxDecoration(
                color: Colorconstant.whiteColor,
                border: Border.all(
                    color: Colorconstant.red, width: 1.0), // Add a border
                borderRadius: BorderRadius.circular(
                    10.0), // Optional: Add rounded corners
              ),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Name: ${contacts[index].name}'),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DonorDetailsView(
                              name: contacts[index].name,
                              city: contacts[index].city,
                              phone: contacts[index].phone,
                              date: contacts[index].date,
                              address: contacts[index].address,
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colorconstant
                            .red, // Set the background color to red
                      ),
                      child: Text('${contacts[index].address}'),
                    )
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('City: ${contacts[index].city}'),
                    Text('Phone: ${contacts[index].phone}'),
                    Text('Date: ${contacts[index].date}'),
                    Text('Blood Type: ${contacts[index].address}'),
                  ],
                ),
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
