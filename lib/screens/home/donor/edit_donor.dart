import 'package:flutter/material.dart';
import 'package:zindgibloodapp/screens/login_signup/phone_number.dart';
import 'package:zindgibloodapp/screens/login_signup/signup_view.dart';

import '../../../colors.dart';
import '../manager/namager_profile_view.dart';

class EditDonorView extends StatefulWidget {
  final String name;
  final String city;
  final String phone;
  final String date;
  final String address;

  const EditDonorView(
      {super.key,
      required this.name,
      required this.city,
      required this.phone,
      required this.date,
      required this.address});

  // const EditDonorView({super.key});

  @override
  State<EditDonorView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<EditDonorView> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final TextEditingController textController = TextEditingController();

  // void login() {
  //   String username = usernameController.text;
  //   String password = passwordController.text;

  //   Navigator.of(context).pushReplacement(
  //     MaterialPageRoute(
  //       builder: (context) => PhoneNumberView(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Donor Details'),
        backgroundColor: Colorconstant.red,
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {
            // Open the drawer when the account circle icon is clicked
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => ManagerProfileView(),
              ),
            );
          },
        ),
      ),
      body: Column(
        children: [
          // First Column: Text Fields with Padding
          Container(
            padding: EdgeInsets.all(16.0), // Add padding around the text fields
            child: Column(
              children: [
                TextField(
                  controller: TextEditingController(text: widget.name),
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                TextField(
                  controller: TextEditingController(text: widget.phone),
                  decoration: InputDecoration(
                    labelText: 'Phone',
                  ),
                ),
                TextField(
                  controller: TextEditingController(text: widget.city),
                  decoration: InputDecoration(
                    labelText: 'City',
                  ),
                ),
                TextField(
                  controller: TextEditingController(text: widget.date),
                  decoration: InputDecoration(
                    labelText: 'Date',
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Text('Blood Group'), // Replace with your desired label
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Center the buttons horizontally
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Implement button action
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colorconstant
                                .red, // Set the background color to red
                          ),
                          child: Text('O+'),
                        ),
                        SizedBox(width: 8.0),
                        ElevatedButton(
                          onPressed: () {
                            // Implement button action
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colorconstant
                                .red, // Set the background color to red
                          ),
                          child: Text('B+'),
                        ),
                        SizedBox(width: 8.0),
                        ElevatedButton(
                          onPressed: () {
                            // Implement button action
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colorconstant
                                .red, // Set the background color to red
                          ),
                          child: Text('AB+'),
                        ),
                        SizedBox(width: 8.0),
                        ElevatedButton(
                          onPressed: () {
                            // Implement button action
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colorconstant
                                .red, // Set the background color to red
                          ),
                          child: Text('A+'),
                        ),
                      ],
                    ),
                    // Replace with your desired label
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Center the buttons horizontally
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Implement button action
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colorconstant
                                .red, // Set the background color to red
                          ),
                          child: Text('A-'),
                        ),
                        SizedBox(width: 8.0),
                        ElevatedButton(
                          onPressed: () {
                            // Implement button action
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colorconstant
                                .red, // Set the background color to red
                          ),
                          child: Text('B-'),
                        ),
                        SizedBox(width: 8.0),
                        ElevatedButton(
                          onPressed: () {
                            // Implement button action
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colorconstant
                                .red, // Set the background color to red
                          ),
                          child: Text('AB-'),
                        ),
                        SizedBox(width: 8.0),
                        ElevatedButton(
                          onPressed: () {
                            // Implement button action
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colorconstant
                                .red, // Set the background color to red
                          ),
                          child: Text('O-'),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          // Second Column: Map (You can use a Map widget here)
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                // padding: EdgeInsets.all(8.0),
                // width: double.infinity,
                // height: double.infinity,
                child: Image.asset(
                  'assets/map1.png',
                  fit: BoxFit
                      .cover, // Ensure the image covers the entire container
                ),
              ),
            ),
          ),
          // Third Column: Buttons
          Row(
            children: [
              SizedBox(width: 8.0), // Add spacing between buttons
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0), // Add padding to the button
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement button 2 action
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colorconstant.red, // Set the background color to red
                    ),
                    child: Text('Save'),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
    // Scaffold(
    //   appBar: AppBar(
    //     title:
    //         Text('Profile for ${widget.name}'), // You can use the received data
    //   ),
    //   body: Center(
    //     child: Column(
    //       children: [
    //         Text('Name: ${widget.name}'),
    //         Text('City: ${widget.city}'),
    //         Text('Phone: ${widget.phone}'),
    //         Text('Date: ${widget.date}'),
    //         Text('Blood Type: ${widget.address}'),
    //       ],
    //     ),
    //   ),
    // );
  }
}
