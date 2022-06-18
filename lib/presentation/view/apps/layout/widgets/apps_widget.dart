import 'package:flutter/material.dart';

class AppsWidget extends StatelessWidget {
  const AppsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 150,
            width: 250,
            color: const Color(0xff4B3281),
            child: Image.asset(
              'assets/images/logo.png',
              height: 20,
              width: 20,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
              height: 130,
              width: 250,
              color: const Color(0xff1E69DA),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Miracast',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.phone_android,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.wifi,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              )),
          const SizedBox(
            width: 10,
          ),
          Container(
              height: 130,
              width: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/cntbg.png'))),
              child: const Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 28.0, vertical: 18),
                child: Text(
                  'MIDEA \nCENTER',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              )),
          const SizedBox(
            width: 10,
          ),
          Container(
              height: 130,
              width: 250,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/playstore.png'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Google Play',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Store',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
              )),
          const SizedBox(
            width: 10,
          ),
          Container(
              height: 130,
              width: 250,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/youtube.png'),
                    const Text(
                      'Youtube',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
          const SizedBox(
            width: 10,
          ),
          Container(
              height: 130,
              width: 250,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'File',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children:  [
                        Text(
                          'Manager',
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Image.asset('assets/images/folder.png'),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 10,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.orange,
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
