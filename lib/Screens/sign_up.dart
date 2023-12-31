import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _signInKey = GlobalKey();
  var emailEditingController = TextEditingController();
  var passwordEditingController = TextEditingController();
  final RegExp emailValid =
      RegExp(r"[a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-z0-9]+\.[a-zA-Z]+");
  final RegExp passwordValid = RegExp(
      r"^(?=.*[A-Z])(?=.*[!@#$%^&*()_+\\=\[\]{};':\\|,.<>\\/?])(?=.*[0-9]).{8,}$");
  @override
  Widget build(BuildContext context) {
    var size = const Size(250, 50);
    return Scaffold(
      body: Center(
        child: Form(
          key: _signInKey,
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 230,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blue[300]),
                        ),
                        onTap: () => Navigator.pushNamed(context, '/log-in'),
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
                    if (_signInKey.currentState!.validate()) {
                      debugPrint(emailEditingController.text);
                      debugPrint(passwordEditingController.text);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: size,
                      elevation: 10.4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text("Sign Up"))
            ],
          ),
        ),
      ),
    );
  }
}
