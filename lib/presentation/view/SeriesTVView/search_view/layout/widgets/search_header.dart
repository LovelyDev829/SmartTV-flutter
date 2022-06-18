import 'package:flutter/material.dart';
import 'package:flutter_tv/presentation/config/front_end_config.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
               GestureDetector(
                 onTap: (){
                   Navigator.pop(context);
                 },
                 child: CircleAvatar(
                  radius: 20,
                  backgroundColor: FrontEndConfigs.kButtonColor.withOpacity(0.19),
                  child: const Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                  ),
              ),
               ),
              const SizedBox(width: 80,),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: FrontEndConfigs.kButtonColor.withOpacity(0.19)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search...',
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            'Tout',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
