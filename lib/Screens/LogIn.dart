import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/widgets.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailEditingController = TextEditingController();
    var passwordEditingController = TextEditingController();
    var size = const Size(250, 50);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Heading(
            header: "Log In to Twitter",
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
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Forget password?",
                style: TextStyle(color: Colors.blue.shade300),
              ),
              const SizedBox(
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: const Text("Create an account"),
                    onTap: () => Navigator.pushNamed(context, '/sign-up'),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                print(emailEditingController.text);
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: size,
                  elevation: 10.4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text("Login"))
        ],
      ),
    );
  }
}
