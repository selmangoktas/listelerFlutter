import 'package:flutter/material.dart';

class ListPageView extends StatefulWidget {
  @override
  _ListPageViewState createState() => _ListPageViewState();
}

class _ListPageViewState extends State<ListPageView> {
  var appBarField = [
    {
      'title': 'Baslik',
      'appBarBack':
          'https://mobilge.com/resimler/2019/02/xiaomi-mi-note-696x463.jpg',
    },
  ];

  var listItem = [
    {
      'image': 'Baslik',
      'username': 'username',
      'userProfilImage':
          'https://mobilge.com/resimler/2019/02/xiaomi-mi-note-696x463.jpg',
      'desc': 'lorem ipsum dot amet'
    },
    {
      'image': 'Baslik2',
      'username': 'username2',
      'userProfilImage':
          'https://mobilge.com/resimler/2019/02/ARCHOS-Diamond-2019-1024x996-265x198.jpg',
      'desc': 'lorem ipsum dot amet2'
    },
    {
      'image': 'Baslik3',
      'username': 'username3',
      'userProfilImage':
          'https://mobilge.com/resimler/2019/02/xiaomi-mi-note-696x463.jpg',
      'desc': 'lorem ipsum dot amet'
    },
    {
      'image': 'Baslik5',
      'username': 'username',
      'userProfilImage':
          'https://mobilge.com/resimler/2019/02/xiaomi-mi-note-696x463.jpg',
      'desc': 'lorem ipsum dot amet'
    },
    {
      'image': 'Baslik2',
      'username': 'username2',
      'userProfilImage':
          'https://mobilge.com/resimler/2019/02/xiaomi-mi-note-696x463.jpg',
      'desc': 'lorem ipsum dot amet2'
    },
    {
      'image': 'Baslik7',
      'username': 'username3',
      'userProfilImage':
          'https://mobilge.com/resimler/2019/02/xiaomi-mi-note-696x463.jpg',
      'desc': 'lorem ipsum dot amet'
    },
    {
      'image': 'Baslik8',
      'username': 'username',
      'userProfilImage':
          'https://mobilge.com/resimler/2019/02/xiaomi-mi-note-696x463.jpg',
      'desc': 'lorem ipsum dot amet'
    },
    {
      'image': 'Baslik9',
      'username': 'username2',
      'userProfilImage':
          'https://mobilge.com/resimler/2019/02/xiaomi-mi-note-696x463.jpg',
      'desc': 'lorem ipsum dot amet2'
    },
    {
      'image': 'Baslik10',
      'username': 'username3',
      'userProfilImage':
          'https://mobilge.com/resimler/2019/02/xiaomi-mi-note-696x463.jpg',
      'desc': 'lorem ipsum dot amet'
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
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image:
                              NetworkImage(listItem[index]['userProfilImage']),
                          fit: BoxFit.cover,
                          height: 50,
                        ),
                        Text(
                          listItem[index]['image'],
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                childCount: listItem.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
