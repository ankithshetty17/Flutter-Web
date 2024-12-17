import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.33,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                   kGradient2,
                   kGradient1
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight
                )
              ),
              child: 
              Align(
                alignment: Alignment.bottomCenter,
                child:
              Padding(padding: EdgeInsets.all(10),
              child:
              CircleAvatar(
                radius: 70,
                backgroundImage:AssetImage(imagepath),
              ),
              ),
              ),  
            ),
            SizedBox(height: 10),
           
            Text(name,
            style: kTitleText,),
             
            Text(email,
            style:kSubTitleText,),

            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(onPressed: (){}, 
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: kPrimaryColor
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                  ),
                  padding: EdgeInsets.all(19)
                ),
                child: Text('View Resume',style: kSubTitleText,),
                ),
                SizedBox(width: 10),
                ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: EdgeInsets.all(20)
                ), 
                child: Row(
                  children: [
                    Text('Contact Me',style:kButtonText,)
                  ],
                ))
              ],
            )
            
          ],
        ),
      ),
    );
  }
}