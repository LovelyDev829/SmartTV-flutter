import 'package:flutter/material.dart';
import 'package:flutter_tv/helper/navigationHelper.dart';
import 'package:flutter_tv/presentation/config/utils.dart';
import 'package:flutter_tv/presentation/view/favorite/layout/widgets/side_bar.dart';
import 'package:flutter_tv/presentation/view/seasons/layout/widget/season_tile.dart';
import 'package:flutter_tv/presentation/view/tv_player/tvplayer.dart';

class SeasonBody extends StatefulWidget {
  const SeasonBody({Key? key}) : super(key: key);

  @override
  State<SeasonBody> createState() => _SeasonBodyState();
}

int selectIndex = 1;

class _SeasonBodyState extends State<SeasonBody> {
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
                            Icons.arrow_back_sharp,
                            color: Colors.white,
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                          onTap: () {
                            selectIndex = 1;
                            setState(() {});
                          },
                          child: selectIndex == 1
                              ? SideBar('Season 1 ')
                              : const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Season 1 ',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 5,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/the.png'),fit: BoxFit.cover
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 38.0,vertical: 12),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'The Witcher (2021)',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/1.1,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        itemCount: Utils.season.length,
                        itemBuilder: (context, i) {
                          return GestureDetector(
                            onTap: (){
                              NavigationHelper.pushRoute(context, MyTvScreen(url: Utils.video[i].url));
                            },
                            child: SeasonTile(
                                img: Utils.season[i].img,
                                text: Utils.season[i].text,
                                text1: Utils.season[i].text1),
                          );
                        }),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
