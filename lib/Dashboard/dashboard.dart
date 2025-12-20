import 'package:flutter/material.dart';
import 'package:medi_slot/View/Widgete/common_button.dart';
import 'package:medi_slot/View/Widgete/common_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Medi Slot",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          margin: EdgeInsets.all(20),
          color: Colors.white,
          child: InkWell(
            borderRadius: BorderRadius.circular(25),
            onTap: () {
              // TODO: Navigate to Appointment Screen
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.local_hospital,
                    size: 50,
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Doctor Appointment",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 25),

                  CommonButton(
                    text: "Login",
                    onPressed: () {
                      print("Button Clicked");
                    },
                  ),

                  SizedBox(height: 25),

                  CommonTextField(
                    textEditingController: emailController,
                    hintText: "Enter Email",
                    labelText: "Email",
                    textInputType: TextInputType.emailAddress,
                    isPassword: true,
                    prefixIcon: const Icon(Icons.password),
                    maxline: 1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
