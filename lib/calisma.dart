import 'package:flutter/material.dart';

class ListPageView extends StatefulWidget {
  @override
  _ListPageViewState createState() => _ListPageViewState();
}

class _ListPageViewState extends State<ListPageView> {
  @override
  Widget build(BuildContext context) {
    var posts = [
      {
        'userName': 'alidemircan',
        'image': 'https://via.placeholder.com/360x65',
        'imageHeight': '65',
      },
      {
        'userName': 'alidemircan',
        'image': 'https://via.placeholder.com/360x135',
        'imageHeight': '135',
      },
      {
        'userName': 'alidemircan',
        'image': 'https://via.placeholder.com/360x505',
        'imageHeight': '505',
      },
      {
        'userName': 'alidemircan',
        'image': 'https://via.placeholder.com/360x65',
        'imageHeight': '65',
      }
    ];
    var sizeWidth = MediaQuery.of(context).size.width;
    //var sizeHeight = MediaQuery.of(context).size.height;
    print(sizeWidth);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 10),
              width: sizeWidth,
              color: Colors.white,
              // height: 60,
              child: Column(
                children: [
                  Container(
                    width: sizeWidth,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: sizeWidth * .85,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: sizeWidth * .10,
                                margin: EdgeInsets.only(right: 1),
                                child: Icon(
                                  Icons.person,
                                ),
                              ),
                              Container(
                                width: sizeWidth * .70,
                                child: Text(
                                  posts[index]['userName'],
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: sizeWidth * .10,
                          child: Icon(
                            Icons.menu,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: sizeWidth,
                    height: double.parse(
                      posts[index]['imageHeight'],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                        image: NetworkImage(
                          posts[index]['image'],
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    width: sizeWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: sizeWidth * .3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.favorite,
                              ),
                              Icon(
                                Icons.comment,
                              ),
                              Icon(
                                Icons.send,
                              ),
                            ],
                          ),
                        ),
                        Container(
                            width: sizeWidth * .1,
                            child: Icon(
                              Icons.add,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
