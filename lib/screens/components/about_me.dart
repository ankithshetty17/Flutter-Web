import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/utils/extensions.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenConstraint().width*0.8,
      child: 
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('About Me',style: kSectionTitleText,),
                SizedBox(height: 10,),
                Text(aboutMe,style: kSubTitleText,),
                SizedBox(height: 15,),
               Divider(),
               SizedBox(height: 10,),
               Text('Experience',style: kSectionTitleText,),
                SizedBox(height: 10,),
                Text(experience,style: kSubTitleText,),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: 
          Container(
           padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color:kWhite,
              borderRadius: BorderRadius.circular(15),
            ),
          ))
        ],
      )
          
    );
}
}