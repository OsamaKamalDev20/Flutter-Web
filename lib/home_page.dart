import 'package:flutter/material.dart';
import 'package:website/colors/colors.dart';
import 'package:website/landing_page.dart';
import 'package:website/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              AppColors.primaryColor,
              AppColors.secondaryColor,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Navbar(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: LandingPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
