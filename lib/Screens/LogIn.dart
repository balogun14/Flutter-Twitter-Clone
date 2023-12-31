import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/widgets.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final GlobalKey<FormState> _loginKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var emailEditingController = TextEditingController();
    var passwordEditingController = TextEditingController();
    final RegExp emailValid =
        RegExp(r"[a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-z0-9]+\.[a-zA-Z]+");
    final RegExp passwordValid = RegExp(
        r"^(?=.*[A-Z])(?=.*[!@#$%^&*()_+\\=\[\]{};':\\|,.<>\\/?])(?=.*[0-9]).{8,}$");
    var size = const Size(250, 50);
    return Scaffold(
      body: Form(
        key: _loginKey,
        child: Column(
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
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter an Email";
                } else if (!emailValid.hasMatch(value)) {
                  return "Please enter a valid email";
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            Input(
              hintText: "Password",
              obscure: true,
              textEditingController: passwordEditingController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter a Password";
                } else if (value.length < 8) {
                  return "Password must be at least 8 characters";
                } else if (!passwordValid.hasMatch(value)) {
                  return "Please enter a Password with special Characters";
                }
                return null;
              },
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
                  if (_loginKey.currentState!.validate()) {
                    debugPrint(emailEditingController.text);
                    debugPrint(passwordEditingController.text);
                  }
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: size,
                    elevation: 10.4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
