import 'package:flutter/material.dart';
import 'package:flutter_tv/helper/navigationHelper.dart';
import 'package:flutter_tv/presentation/view/movie_page/layout/widgets/casting_card.dart';
import 'package:flutter_tv/presentation/view/movie_page/layout/widgets/movie_header.dart';
import 'package:flutter_tv/presentation/view/seasons/season_view.dart';

class MoviePageBody extends StatelessWidget {
  const MoviePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/the.png'), fit: BoxFit.fill)),
      child: Container(
        color: Colors.black.withOpacity(0.1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                height: 1000,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 140.0),
                      child: Container(
                        height: 200,
                        color: const Color(0xff0F5366).withOpacity(0.74),
                        width: MediaQuery.of(context).size.width,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 220.0, top: 10),
                          child: MovieHeader(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 70,
                left: 30,
                child: Container(
                  height: 190,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/images/witcher.png'),
                ),
              ),
              Positioned(
                top: 350,
                left: 30,
                bottom: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            NavigationHelper.pushRoute(context, SeasonView());
                          },
                          child: CastingCard(
                            img: 'assets/images/witcher.png',
                            text: 'Season 1',
                            text1: '',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CastingCard(
                          img: 'assets/images/the.png',
                          text: 'Season 2',
                          text1: '',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 550,
                left: 30,
                bottom: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      'Casting',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CastingCard(
                          img: 'assets/images/men.png',
                          text: 'Henry Cavil',
                          text1: 'Galerate of rich..',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CastingCard(
                          img: 'assets/images/men1.png',
                          text: 'Freya Allan',
                          text1: 'Actress',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CastingCard(
                          img: 'assets/images/men2.png',
                          text: 'Henry Cavil',
                          text1: 'Actress',
                        ),
                      ],
                    ),
                    const Text(
                      'Media',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 90,
                            width: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/h.png'),
                              ),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/h1.png'),
                              ),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/h2.png'),
                              ),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/h.png'),
                              ),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/h1.png'),
                              ),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/h.png'),
                              ),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/h.png'),
                              ),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/h1.png'),
                              ),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 190,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/h2.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
