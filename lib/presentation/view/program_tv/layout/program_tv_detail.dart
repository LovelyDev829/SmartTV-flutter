import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/view/program_tv/layout/widgets/tv_detail_widget.dart';

class ProgramTvDetail extends StatelessWidget {
  const ProgramTvDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(48.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const SizedBox(
            height: 40,
          ),
          const Text(
            'FR | TF1 FHD',
            style: const TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 30,),
          TvDetailWidget(time: '13:00', text: 'Le 13 h'),
          const SizedBox(height: 10,),
          TvDetailWidget(time: '13:00', text: 'Patits plats on aquilibre'),
          const SizedBox(height: 10,),
          TvDetailWidget(time: '13:00', text: 'Le 13 h'),
          const SizedBox(height: 10,),
          TvDetailWidget(time: '13:00', text: 'Patits plats on aquilibre'),
          const SizedBox(height: 10,),
          TvDetailWidget(time: '13:00', text: 'Le 13 h'),
          const SizedBox(height: 10,),
          TvDetailWidget(time: '13:00', text: 'Patits plats on aquilibre'),
          const SizedBox(height: 10,),
          TvDetailWidget(time: '13:00', text: 'Le 13 h'),
          const SizedBox(height: 10,),
          TvDetailWidget(time: '13:00', text: 'Patits plats on aquilibre'),
          const SizedBox(height: 10,),
          TvDetailWidget(time: '13:00', text: 'Patits plats on aquilibre'),
          const SizedBox(height: 10,),
          TvDetailWidget(time: '13:00', text: 'Le 13 h'),
          const SizedBox(height: 10,),
          TvDetailWidget(time: '13:00', text: 'Patits plats on aquilibre'),
          const SizedBox(height: 10,),
          TvDetailWidget(time: '13:00', text: 'Le 13 h'),
          const SizedBox(height: 10,),
          TvDetailWidget(time: '13:00', text: 'Patits plats on aquilibre'),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
