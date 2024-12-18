import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialsButtons extends StatelessWidget {
  const SocialsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: context.screenConstraint().width > 400
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        final Uri url = Uri.parse(instagram);
                        await launchUrl(url);
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(10, 20),
                          backgroundColor: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(12)),
                      child: const FaIcon(
                        FontAwesomeIcons.instagram,
                        size: 14,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        final Uri url = Uri.parse(linkedIn);
                        await launchUrl(url);
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(10, 20),
                          backgroundColor: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(12)),
                      child: const FaIcon(
                        FontAwesomeIcons.linkedin,
                        size: 14,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        final Uri url = Uri.parse(gitHubUrl);
                        await launchUrl(url);
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(10, 20),
                          backgroundColor: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(12)),
                      child: const FaIcon(
                        FontAwesomeIcons.github,
                        size: 14,
                      ))
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        final Uri url = Uri.parse(instagram);
                        await launchUrl(url);
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(10, 20),
                          backgroundColor: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(12)),
                      child: const FaIcon(
                        FontAwesomeIcons.instagram,
                        size: 14,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        final Uri url = Uri.parse(linkedIn);
                        await launchUrl(url);
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(10, 20),
                          backgroundColor: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(12)),
                      child: const FaIcon(
                        FontAwesomeIcons.linkedin,
                        size: 14,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        final Uri url = Uri.parse(gitHub);
                        await launchUrl(url);
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(10, 20),
                          backgroundColor: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(12)),
                      child: const FaIcon(
                        FontAwesomeIcons.github,
                        size: 14,
                      ))
                ],
              ));
  }
}
