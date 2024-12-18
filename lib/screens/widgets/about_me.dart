import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: context.screenConstraint().width * 0.8,
        child: context.screenConstraint().width > 400
            ?
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About Me',
                          style: kSectionTitleText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          aboutMe,
                          style: kSubTitleText,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Experience',
                          style: kSectionTitleText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          experience,
                          style: kSubTitleText,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
                              style: kSubTitleText,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: kPrimaryColor,
                                  size: 15,
                                ),
                                Text(location),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'E-mail',
                              style: kSubTitleText,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.mail,
                                  color: kPrimaryColor,
                                  size: 15,
                                ),
                                Text(email),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Ph.no',
                              style: kSubTitleText,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: kPrimaryColor,
                                  size: 15,
                                ),
                                Text(phno),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Github',
                              style: kSubTitleText,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(Icons.launch,
                                    color: kPrimaryColor, size: 15),
                                GestureDetector(
                                  onTap: () async {
                                    final Uri url = Uri.parse(gitHub);
                                    await launchUrl(url);
                                  },
                                  child: Text(gitHub),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About Me',
                        style: kSectionTitleText,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        aboutMe,
                        style: kSubTitleText,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Experience',
                        style: kSectionTitleText,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        experience,
                        style: kSubTitleText,
                      ),
                    ],
                  ),
                 const  SizedBox(height: 10,),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Location',
                            style: kSubTitleText,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: kPrimaryColor,
                                size: 15,
                              ),
                              Text(location),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'E-mail',
                            style: kSubTitleText,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.mail,
                                color: kPrimaryColor,
                                size: 15,
                              ),
                              Flexible(child: Text(email)),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Ph.no',
                            style: kSubTitleText,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: kPrimaryColor,
                                size: 15,
                              ),
                              Text(phno),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ));
  }
}
