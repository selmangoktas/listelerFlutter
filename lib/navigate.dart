import 'package:flutter/material.dart';

import 'asayfasi.dart';
import 'bsayfasi.dart';

class NavigatePage extends StatefulWidget {
  @override
  _NavigatePageState createState() => _NavigatePageState();
}

class _NavigatePageState extends State<NavigatePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              print('A sayfasına giiyor');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ASayfasiView();
                  },
                ),
              );
            },
            child: Container(
              color: Colors.red,
              child: Text('A sayfasın git '),
            ),
          ),
          InkWell(
            onTap: () {
              print('B sayfasına giiyor');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BSayfasiView();
                  },
                ),
              );
            },
            child: Container(
              color: Colors.red,
              child: Text('B sayfasın git '),
            ),
          ),
        ],
      ),
    );
  }
}
