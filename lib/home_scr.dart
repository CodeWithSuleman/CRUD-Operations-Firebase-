import 'package:crud_practice/crud_operation.dart';
import 'package:crud_practice/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController idController = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextFormField(
              controller: idController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter id',
                  hintText: 'Enter Your id'),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Name',
                  hintText: 'Enter Your Name'),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Email',
                  hintText: 'Enter Your Email'),
            ),
            const SizedBox(height: 10),
            CupertinoButton(
                child: const Text("Save"),
                onPressed: () {
                  FirebaseCRUD().saveUser(User(
                      name: nameController.text,
                      email: emailController.text,
                      id: idController.text));
                }),
            const SizedBox(height: 10),
            const Text('For Delete Any Document'),
            const SizedBox(height: 10),
            CupertinoButton(
                child: const Text("delete"),
                onPressed: () {
                  FirebaseCRUD().deleteUser();
                }),
            const SizedBox(height: 10),
            const Text('For Update Any Document'),
            const SizedBox(height: 10),
            CupertinoButton(
                child: const Text("Update"),
                onPressed: () {
                  FirebaseCRUD().updateUser(User(
                      name: nameController.text,
                      email: emailController.text,
                      id: idController.text));
                }),
            const SizedBox(height: 10),
            const Text('For Read Any Document'),
            const SizedBox(height: 10),
            CupertinoButton(
                child: const Text("Read"),
                onPressed: () {
                  FirebaseCRUD().readUser();
                }),
          ],
        ),
      )),
    );
  }
}
