import 'package:engcheck_v4_0_0/screens/home_screen/home_app_bar/home_app_bar.dart';
import 'package:engcheck_v4_0_0/screens/home_screen/home_body/home_body.dart';
import 'package:engcheck_v4_0_0/screens/home_screen/home_drawer/home_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: HomeAppBar(),
      body: HomeBody(),
    );
  }
}
