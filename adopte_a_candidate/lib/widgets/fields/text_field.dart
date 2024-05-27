import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// This text field is build to gather basic user data when subscribing
// TODO Add the method to gather user input and keep it in memory

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    required this.controller,
    required this.title,
    required this.hinttext,
    required this.isObscure,
    required this.isEmail,
    required this.width,
    required this.heigth,
    super.key,
    required this.showToggle,
  });

  final TextEditingController controller;
  final String title;
  final String hinttext;
  final bool isObscure;
  final bool isEmail;
  final bool showToggle;
  final double width;
  final double heigth;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _isObscure;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.heigth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 30.0, bottom: 5.0, top: 10.0),
            child: Text(
              widget.title,
              style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ), // Add some spacing between the title and the text field
          TextField(
            obscureText: _isObscure,
            keyboardType: widget.isEmail
                ? TextInputType.emailAddress
                : TextInputType.text,
            controller: widget.controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xDDF5F5F5),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffffd5c2),
                  width: 2.5,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              hintText: widget.hinttext,
              suffixIcon: widget.showToggle
                  ? IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
