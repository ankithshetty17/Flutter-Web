import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/about_me.dart';
import 'package:portfolio/screens/widgets/project_screen.dart';
import 'package:portfolio/screens/widgets/socials.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kbg,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.33,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [kGradient2, kGradient1],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight)),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage(imagepath),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: kTitleText,
            ),
            Text(
              email,
              style: kSubTitleText,
            ),
            const SizedBox(
              height: 10,
            ),
            context.screenConstraint().width > 400
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        onPressed: () async {
                          final Uri url = Uri.parse(resumeLink);
                          await launchUrl(url);
                        },
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: kPrimaryColor),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            padding: const EdgeInsets.all(19)),
                        child: Text(
                          'View Resume',
                          style: kSubTitleText,
                        ),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(contactMe);
                            await launchUrl(url);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              padding: const EdgeInsets.all(20)),
                          child: Text(
                            'Contact Me',
                            style: kButtonText,
                          ))
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        onPressed: () async {
                          final Uri url = Uri.parse(resumeLink);
                          await launchUrl(url);
                        },
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: kPrimaryColor),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            padding: const EdgeInsets.all(19)),
                        child: Text(
                          'View Resume',
                          style: kSubTitleText,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                          onPressed: () async {
                            final Uri url = Uri.parse(contactMe);
                            await launchUrl(url);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              padding: const EdgeInsets.all(20)),
                          child: Text(
                            'Contact Me',
                            style: kButtonText,
                          )),
                    ],
                  ),
            const SizedBox(height: 20),
            const AboutMe(),
              const SizedBox(height: 20),
              Center(
              child: SizedBox(
                  width: context.screenConstraint().width * 0.8,
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:  context.screenConstraint().width > 1000 ?2 :1,
                          childAspectRatio: 
                          context.screenConstraint().width > 1200  ? 4 : 
                          context.screenConstraint().width > 900 ? 3:
                          context.screenConstraint().width > 650 ? 4:
                           context.screenConstraint().width > 520 ? 3:
                           context.screenConstraint().width > 410 ? 1: 1,
                          
                      ),
                      itemCount: projectList.length,
                      itemBuilder: (context,index){
                        return ProjectScreen(projectdata: projectList[index]);
                      },
                  ),
              ),
              ),
             const  SocialsButtons()
          ],
        ),
      ),
    );
  }
}
