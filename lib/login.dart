import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/login.png'),
          fit: BoxFit.cover,
        ),
      ), 
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35,top:130),
              child: const Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33,
                ),
              ),
            ),
            Container(
              padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.5, right: 35, left: 35),
              child: Column(
                children: [
                  TextField(
                    decoration:InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    )
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    obscureText: true,
                    decoration:InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Mot de passe',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}