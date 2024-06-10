import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../services/providers/providers.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    required this.controller,
    required this.title,
    required this.hintText,
    required this.isObscure,
    required this.isEmail,
    required this.width,
    required this.height,
    super.key,
    required this.showToggle,
  });

  final TextEditingController controller;
  final String title;
  final String hintText;
  final bool isObscure;
  final bool isEmail;
  final bool showToggle;
  final double width;
  final double height;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _isObscure;

  @override
  // initialize the state of the widget
  void initState() {
    super.initState();
    _isObscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width, // selectable width
      height: widget.height, // selectable height
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 30.0, bottom: 5.0, top: 10.0),
            child: Text(
              widget.title, // selected title put above the Text Field
              style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          TextField(
            obscureText: _isObscure, // bool, set the text to obscure (hidden) generally for passwords
            keyboardType: widget.isEmail // bool, set isEmail to either true or false
                ? TextInputType.emailAddress
                : TextInputType.text,
            controller: widget.controller, // selectable controller for the text field
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
              hintText: widget.hintText, // hintText for the text field, describes what the field is for
              suffixIcon: widget.showToggle
                  ? IconButton(
                //linked to isObscure, toggles the visibility of the text
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


class AboutMeTextField extends StatefulWidget {
  const AboutMeTextField({
    super.key,
    required this.aboutMeTextNotifier,
  });

  final ValueNotifier<String> aboutMeTextNotifier;

  @override
  _AboutMeTextFieldState createState() => _AboutMeTextFieldState();
}

class _AboutMeTextFieldState extends State<AboutMeTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.aboutMeTextNotifier.value);

    widget.aboutMeTextNotifier.addListener(() {
      if (_controller.text != widget.aboutMeTextNotifier.value) {
        _controller.text = widget.aboutMeTextNotifier.value;
      }
    });
  }

  @override
  void dispose() {
    widget.aboutMeTextNotifier.removeListener(() {
      if (_controller.text != widget.aboutMeTextNotifier.value) {
        _controller.text = widget.aboutMeTextNotifier.value;
      }
    });
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width - 50,
      child: TextField(
        controller: _controller,
        onChanged: (text) => widget.aboutMeTextNotifier.value = text,
        maxLines: 3,
        decoration: const InputDecoration(
          filled: true,
          fillColor: Color(0xDDF5F5F5),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffffd5c2),
              width: 2.5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        textDirection: TextDirection.ltr,
      ),
    );
  }
}


class NonWritableAboutMe extends StatelessWidget {
  const NonWritableAboutMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Listen to changes in the ProfileState
    var profileState = Provider.of<ProfileState>(context);

    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width - 50,
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F5F5),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 2, color: Color(0xFFFFD5C2)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          profileState.aboutMeTexts.join("\n"), // Use the latest text from the ProfileState
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}