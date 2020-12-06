import 'package:flutter/material.dart';

class Countries extends StatefulWidget {
  final String continent;
  Countries(this.continent);

  @override
  _CountriesState createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  @override
  void initState() {
    // Call API here to fetch countries by continent
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a country'),
      ),
      body: Container(
        child: Center(
          child: Text(widget.continent),
        ),
      ),
    );
  }
}
