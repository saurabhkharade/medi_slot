import 'package:flutter/material.dart';
import 'package:medi_slot/View/Widgete/common_app_bar.dart';

import '../View/app_screen/story_section.dart';

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
      appBar: CommonAppBar(title: "Hi, Saurabh", subtitle: 'Good Morning'),
      body: SafeArea(child: StoreStoriesScreen()),
    );
  }
}
