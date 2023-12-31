import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailEditingController = TextEditingController();
    var passwordEditingController = TextEditingController();
    var size = const Size(250, 50);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Heading(
              header: "Sign Up for twitter",
            ),
            const SizedBox(
              height: 50,
            ),
            Input(
              hintText: "Email",
              obscure: false,
              textEditingController: emailEditingController,
            ),
            const SizedBox(height: 15),
            Input(
              hintText: "Password",
              obscure: true,
              textEditingController: passwordEditingController,
            ),
            const SizedBox(
              height: 30,
            ),
            ButtonTheme(
              minWidth: 40,
              buttonColor: Colors.deepOrangeAccent,
              child: ElevatedButton(
                  onPressed: () {
                    print(emailEditingController.text);
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: size,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text("Sign Up")),
            )
          ],
        ),
      ),
    );
  }
}
