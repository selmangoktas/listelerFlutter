import 'package:flutter/material.dart';

class ListPageView extends StatefulWidget {
  @override
  _ListPageViewState createState() => _ListPageViewState();
}

class _ListPageViewState extends State<ListPageView> {
  var students = [
    {
      'name': null,
      'point': '100',
    },
    {
      'name': 'idris',
      'point': '20',
    },
    {
      'name': 'telat',
      'point': '80',
    },
    {
      'name': 'murat',
      'point': '90',
    },
    {
      'name': 'taner',
      'point': '10',
    },
    {
      'name': 'selam',
      'point': '60',
    },
    {
      'name': null,
      'point': '60',
    },
  ];
  var tempIndex; //camalCase;
  var puan; //camalCase;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Listeler',
        ),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          //print(index.toString());
          tempIndex = index;
          puan = int.parse(students[index]['point']);
                 
          print(tempIndex);
          return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            color:  int.parse(students[index]['point']) > 60 ? Colors.green : int.parse(students[index]['point']) == 60 ? Colors.yellow :  Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  students[index]['name'] ?? 'Ad verisi girilmemiş',
                ),
                Text(
                  students[index]['point'],
                ),
                int.parse(students[index]['point']) > 60 ? Text('Geçti') : 
                int.parse(students[index]['point']) == 60 ? Text('Sorunlu') :  Text('Kaldı') ,

              ],
            ),
          );
        },
      ),
    );
  }
}
