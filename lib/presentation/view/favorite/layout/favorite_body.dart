import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/view/SeriesTVView/series_tv.dart';
import 'package:flutter_tv/presentation/view/favorite/layout/widgets/favoriteCard.dart';
import 'package:flutter_tv/presentation/view/favorite/layout/widgets/side_bar.dart';
import 'package:flutter_tv/presentation/view/favorite/layout/widgets/side_bar_active.dart';
import 'package:flutter_tv/presentation/view/favorite/layout/widgets/side_bar_row.dart';

class FavoriteBody extends StatefulWidget {
  const FavoriteBody({Key? key}) : super(key: key);

  @override
  State<FavoriteBody> createState() => _FavoriteBodyState();
}

int selectIndex = 1;

class _FavoriteBodyState extends State<FavoriteBody> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.view_list_sharp,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Tout',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 1;
                            setState(() {});
                          },
                          child: selectIndex == 1
                              ? SideBar('Favorites')
                              : const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Favorites',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 2;
                            setState(() {});
                          },
                          child: selectIndex == 2
                              ? SideBar('Histourique')
                              : const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Histourique',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 3;
                            setState(() {});
                          },
                          child: selectIndex == 3
                              ? SideBarActiveRow('TOP ONE')
                              : SideBarRow('TOP ONE')),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 4;
                            setState(() {});
                          },
                          child: selectIndex == 4
                              ? SideBarActiveRow('UHD')
                              : SideBarRow('UHD')),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 5;
                            setState(() {});
                          },
                          child: selectIndex == 5
                              ? SideBarActiveRow('DISNEY+')
                              : SideBarRow('DISNEY+')),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 6;
                            setState(() {});
                          },
                          child: selectIndex == 6
                              ? SideBarActiveRow('TOP ONE')
                              : SideBarRow('TOP ONE')),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 7;
                            setState(() {});
                          },
                          child: selectIndex == 7
                              ? SideBarActiveRow('UHD')
                              : SideBarRow('UHD')),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 8;
                            setState(() {});
                          },
                          child: selectIndex == 8
                              ? SideBarActiveRow('TOP ONE')
                              : SideBarRow('TOP ONE')),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 9;
                            setState(() {});
                          },
                          child: selectIndex == 9
                              ? SideBarActiveRow('TOP ONE')
                              : SideBarRow('TOP ONE')),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 10;
                            setState(() {});
                          },
                          child: selectIndex == 10
                              ? SideBarActiveRow('TOP ONE')
                              : SideBarRow('TOP ONE')),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 11;
                            setState(() {});
                          },
                          child: selectIndex == 11
                              ? SideBarActiveRow('TOP ONE')
                              : SideBarRow('TOP ONE')),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 12;
                            setState(() {});
                          },
                          child: selectIndex == 12
                              ? SideBarActiveRow('TOP ONE')
                              : SideBarRow('TOP ONE')),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 13;
                            setState(() {});
                          },
                          child: selectIndex == 13
                              ? SideBarActiveRow('TOP ONE')
                              : SideBarRow('TOP ONE')),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 14;
                            setState(() {});
                          },
                          child: selectIndex == 14
                              ? SideBarActiveRow('TOP ONE')
                              : SideBarRow('TOP ONE')),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 3,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  if (selectIndex == 1) const FavoriteCard(),
                  if (selectIndex == 2) const FavoriteCard(),
                  if (selectIndex == 3) const FavoriteCard(),
                  if (selectIndex == 4) const FavoriteCard(),
                  if (selectIndex == 5) const FavoriteCard(),
                  if (selectIndex == 6) const FavoriteCard(),
                  if (selectIndex == 7) const FavoriteCard(),
                  if (selectIndex == 8) const FavoriteCard(),
                  if (selectIndex == 9) const FavoriteCard(),
                  if (selectIndex == 10) const FavoriteCard(),
                  if (selectIndex == 11) const FavoriteCard(),
                  if (selectIndex == 12) const FavoriteCard(),
                  if (selectIndex == 13) const FavoriteCard(),
                  if (selectIndex == 14) const FavoriteCard(),
                ],
              ),
            ))
      ],
    );
  }
}
