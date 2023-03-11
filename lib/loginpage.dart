import 'package:flutter/material.dart';
import 'package:frontend_msngr/signup.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  // void dispose(){ 
  //   usernameController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        margin: const EdgeInsets.only(top: 60),
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text("LOGIN",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              // ignore: prefer_const_constructors
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(labelText: "enter username"),
              ),
              // ignore: prefer_const_constructors
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: "enter password"),
              ),
              const SizedBox(height: 20),
               ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(1) 
                ),
                  onPressed: (){
                    print(usernameController.text);
                    print(passwordController.text);
                  },
                  child: Text("Submit", style: TextStyle(color: Colors.white))),
              const SizedBox(height: 20),
               InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignupPage()));
                  },
                  child: Text("Signup Instead", style: TextStyle(color: Colors.black)))
            ]),
      ),
    ));
  }
}
