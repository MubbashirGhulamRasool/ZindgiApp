import 'package:flutter/material.dart';
import 'package:zindgibloodapp/screens/login_signup/phone_number.dart';
import 'package:zindgibloodapp/screens/login_signup/signup_view.dart';

import '../../../colors.dart';
import 'edit_donor.dart';

class DonorDetailsView extends StatefulWidget {
  final String name;
  final String city;
  final String phone;
  final String date;
  final String address;

  const DonorDetailsView(
      {super.key,
      required this.name,
      required this.city,
      required this.phone,
      required this.date,
      required this.address});

  // const DonorDetailsView({super.key});

  @override
  State<DonorDetailsView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DonorDetailsView> {
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
        title: const Text('Donor Details'),
        backgroundColor: Colorconstant.red,
        leading: IconButton(
          icon: Icon(Icons.account_circle), // Replace with the desired icon
          onPressed: () {
            // Implement your action here
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
                    // labelText: 'Name',
                  ),
                ),
                TextField(
                  controller: TextEditingController(text: widget.phone),
                  decoration: InputDecoration(
                    // labelText: 'Phone',
                  ),
                ),
                TextField(
                  controller: TextEditingController(text: widget.city),
                  decoration: InputDecoration(
                    // labelText: 'City',
                  ),
                ),
                TextField(
                  controller: TextEditingController(text: widget.date),
                  decoration: InputDecoration(
                    // labelText: 'Date',
                  ),
                ),
                Row(
                  children: [
                    Text('Blood Group:'), // Replace with your desired label
                    Expanded(
                      child:
                          Container(), // This empty container takes up all available space
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Implement button action
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colorconstant
                            .red, // Set the background color to red
                      ),
                      child: Text('${widget.address}'),
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
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0), // Add padding to the button
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement button 1 action
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colorconstant.red, // Set the background color to red
                    ),
                    child: Text('Call'),
                  ),
                ),
              ),
              SizedBox(width: 8.0), // Add spacing between buttons
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0), // Add padding to the button
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => EditDonorView(
                            name: widget.name,
                            city: widget.city,
                            phone: widget.phone,
                            date: widget.date,
                            address: widget.address,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colorconstant.red, // Set the background color to red
                    ),
                    child: Text('Edit'),
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
