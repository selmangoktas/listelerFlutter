import 'package:flutter/material.dart';

class ListPageView extends StatefulWidget {
  @override
  _ListPageViewState createState() => _ListPageViewState();
}

class _ListPageViewState extends State<ListPageView> {
  var props = [
    {
      'propName': 'Cephe',
      'props': [
        'batı',
        'doğu',
        'kuzey',
        'güney',
      ],
    },
    {
      'propName': 'Oda',
      'props': [
        '2+1',
        '3+1',
        '4+1',
        '5+1',
      ],
    },
  ];
  var tempIndex; //camalCase;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 500,
              pinned: true,
              snap: true,
              floating: true,
              flexibleSpace: Stack(
                alignment: Alignment.topCenter,
                children: [
                  FlexibleSpaceBar(
                    centerTitle: true,
                    background: Image.network(
                      'https://tr.web.img3.acsta.net/pictures/21/02/22/14/56/0877749.jpg',
                      fit: BoxFit.cover,
                      color: Colors.black.withOpacity(.3),
                      colorBlendMode: BlendMode.darken,
                    ),
                    titlePadding: EdgeInsets.zero,
                    title: Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 50,
                            color: Colors.lightBlue,
                            child: Text(
                              'Container',
                            ),
                          ),
                          Text(
                            'AppBar',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                color: Colors.lightBlue,
                child: Text(
                  'Container',
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, indx) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.green,
                    child: Text(
                      'List Item',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  );
                },
                childCount: 100,
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 3,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.green,
                  child: Text(
                    'List Item',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.green,
                  child: Text(
                    'List Item',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.green,
                  child: Text(
                    'List Item',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.green,
                  child: Text(
                    'List Item',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.green,
                  child: Text(
                    'List Item',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.green,
                  child: Text(
                    'List Item',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.green,
                  child: Text(
                    'List Item',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.green,
                  child: Text(
                    'List Item',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.green,
                  child: Text(
                    'List Item',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
