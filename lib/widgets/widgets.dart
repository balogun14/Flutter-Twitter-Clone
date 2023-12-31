import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String? header;
  const Heading({super.key, this.header});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/twitter.png',
          colorBlendMode: BlendMode.screen,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        Text(
          "$header",
          style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
        ),
      ],
    );
  }
}

class Input extends StatelessWidget {
  final String? hintText;
  final bool obscure;
  final TextEditingController? textEditingController;
  const Input(
      {super.key,
      this.hintText,
      required this.obscure,
      this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      controller: textEditingController,
      decoration: InputDecoration(
        labelText: hintText,
        constraints: const BoxConstraints(
          minWidth: 150,
          maxWidth: 300,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    );
  }
}
