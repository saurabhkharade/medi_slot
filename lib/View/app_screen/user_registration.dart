import 'package:flutter/material.dart';
import 'package:medi_slot/View/Widgete/common_appbar.dart';

import '../Widgete/common_app_bar.dart';
import '../Widgete/common_textfield.dart';

class UserRegistration extends StatefulWidget {
  const UserRegistration({super.key});

  @override
  State<UserRegistration> createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "User Registration",subtitle: "Good Morning ",),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CommonTextField(
              textEditingController: nameController,
              hintText: "Enter Name",
              textInputType: TextInputType.text,
            ),
            const SizedBox(height: 20),

            CommonTextField(
              textEditingController: mobileController,
              hintText: "Enter Mobile Number",
              textInputType: TextInputType.phone,
            ),
            const SizedBox(height: 20),

            CommonTextField(
              textEditingController: emailController,
              hintText: "Enter Email",
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),

            CommonTextField(
              textEditingController: ageController,
              hintText: "Enter Age",
              textInputType: TextInputType.number,
            ),
            const SizedBox(height: 20),

            CommonButton(text: "Submit", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
