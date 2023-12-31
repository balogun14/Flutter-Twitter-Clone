import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/widgets.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Heading(header: "Welcome To Twitter"),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text("You have to Sign Up or Log In"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/sign-up");
                },
                child: const Text("Sign Up"),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black45),
                child: const Text("Log In"),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
