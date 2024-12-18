import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
                         backgroundColor: kWhite,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(12)),
                     child:SvgPicture.asset('assets/instagram.svg'),),
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
                          backgroundColor: kWhite,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(12)),
                       child:SvgPicture.asset('assets/linkedin.svg'),),
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
                         backgroundColor: kWhite,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(12)),
                      child:SvgPicture.asset('assets/github.svg'),)
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        final Uri url = Uri.parse(instagram);
                        await launchUrl(url);
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(10, 20),
                          backgroundColor: kWhite,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(12)),
                      child:SvgPicture.asset('assets/instagram.svg'),),
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
                          backgroundColor: kWhite,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(12)),
                       child:SvgPicture.asset('assets/linkedin.svg'),),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        final Uri url = Uri.parse(gitHub);
                        await launchUrl(url);
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(10, 20),
                          backgroundColor: kWhite,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(12)),
                      child:SvgPicture.asset('assets/github.svg'),
                  ),
                ],
              ));
  }
}
