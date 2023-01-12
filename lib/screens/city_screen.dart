import 'package:flutter/material.dart';
import '../functions/constants.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String cityName = 'Delhi';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_outlined,
                size: 30,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (value) {
                  cityName = value;
                },
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.location_city,
                    color: Colors.white,
                  ),
                  hintText: 'Enter city name',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context, cityName);
              },
              child: const Text(
                'Click Here !',
                style: kButtonTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
