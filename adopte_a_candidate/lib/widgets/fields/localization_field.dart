import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';

class LocalizationField extends StatefulWidget {
  const LocalizationField(
      {required this.controller,
      required this.title,
      required this.hintText,
      required this.width,
      required this.height,
      super.key});

  final TextEditingController controller;
  final String title;
  final String hintText;
  final double width;
  final double height;

  @override
  State<LocalizationField> createState() => _LocalizationFieldState(
      controller: controller,
      title: title,
      hintText: hintText,
      width: width,
      height: height);
}

class _LocalizationFieldState extends State<LocalizationField> {
  final TextEditingController controller;
  final String title;
  final String hintText;
  final double width;
  final double height;

  _LocalizationFieldState(
      {required this.controller,
      required this.title,
      required this.hintText,
      required this.width,
      required this.height});

  Future<List<Placemark>> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    // Reverse geocode the coordinates to get the city
    return await placemarkFromCoordinates(
        position.latitude, position.longitude);
  }

  void getLocalization() {
    setState(() {
      _determinePosition().then((value) {
        controller.text = value.isNotEmpty
            ? value[0].locality ?? '' // Get the city name if available
            : 'City not found';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            controller: controller,
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
              hintText: widget.hintText,
              suffixIcon: IconButton(
                icon: const Icon(Icons.location_searching_outlined),
                onPressed: getLocalization,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
