import 'package:flutter/material.dart';
import 'package:world_countries/ui/countries.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List regions = ['all', 'africa', 'americas', 'asia', 'europe', 'oceania'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: regions.length,
      itemBuilder: (context, index) {
        return getCard(index);
      },
    );
  }

  Widget getCard(index) {
    return Card(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
      elevation: 3,
      color: Colors.blueGrey[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        title: Container(
          height: 60.0,
          width: double.infinity,
          child: Center(
            child: Text(
              regions[index].toString().toUpperCase(),
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ),
        onTap: () {
          print("You tapped: ${regions[index]}");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Countries(regions[index]),
            ),
          );
        },
      ),
    );
  }
}
