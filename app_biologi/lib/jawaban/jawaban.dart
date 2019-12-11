import 'package:flutter/material.dart';


class Jawaban extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text("Jawaban",style: TextStyle(color: Colors.white,)),
          backgroundColor: Colors.blue[600],
        ),
      body: Table(
        defaultColumnWidth: FixedColumnWidth(200.0),
        border: TableBorder(
          horizontalInside: BorderSide(
            color: Colors.white,
            style: BorderStyle.solid,
            width: 1.0,
          ),
          verticalInside: BorderSide(
            color: Colors.white,
            style: BorderStyle.solid,
            width: 3.0,   
          ),
        ),
        
        children: [
          _buildTableRow1("No . , Kunci Jawaban"),
          _buildTableRow("1, C"),
          _buildTableRow("2, E"),
          _buildTableRow("3, B"),
          _buildTableRow("4, D"),
          _buildTableRow("5, C"),
          _buildTableRow("6, C"),
          _buildTableRow("7, D"),
          _buildTableRow("8, B"),
          _buildTableRow("9, D"),
          _buildTableRow("10, E"),
        ],
      ),
    );
  }

  TableRow _buildTableRow(String listOfNames) {
    return TableRow(
      children: listOfNames.split(',').map((name) {
        return Container(
          alignment: Alignment.center,
          child: Text(name, style: TextStyle(fontSize: 18.0,color: Colors.white)),
          padding: EdgeInsets.all(10.0),
        );
      }).toList(),
    );
  }

  TableRow _buildTableRow1(String listOfNames) {
    return TableRow(
      children: listOfNames.split(',').map((name) {
        return Container(
          alignment: Alignment.center,
          child: Text(name, style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white)),
          padding: EdgeInsets.all(10.0),
        );
      }).toList(),
    );
  }
}

