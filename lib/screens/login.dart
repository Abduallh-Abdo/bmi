import 'package:bmi/screens/home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  TextEditingController emailContriller = TextEditingController();
  TextEditingController passContriller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Body Mass',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Form(
        key: formkey,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: emailContriller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter your Email';
                  }
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_sharp),
                  hintText: 'Enter your Email',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                controller: passContriller,
                onFieldSubmitted: (value) {
                  print('value');
                },
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter your Password';
                  }
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  hintText: 'Enter your Password',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  suffix: Icon(Icons.remove_red_eye_sharp),
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    );
                  } else {}
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  const Text(
                    'Don\'t have a account?',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    child: const Text('Register'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
