import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/model/project_model.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatelessWidget {
  final Project projectdata;
  const ProjectScreen({super.key, required this.projectdata});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: context.screenConstraint().width * 0.4,
        child: context.screenConstraint().width > 400
            ? Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.build,
                            color: kGrey,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            projectdata.name,
                            style: kSectionTitleText,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        projectdata.description,
                        style: kSubTitleText,
                      ),
                    ),
                    const Spacer(),
                    const Divider(),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                              onPressed: () async {
                                final Uri url = Uri.parse(projectdata.link);
                                await launchUrl(url);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: kPrimaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  padding: const EdgeInsets.all(20)),
                              child: Text(
                                'View Project',
                                style: kButtonText,
                              )),
                        ))
                  ],
                ),
              )
            : Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.build,
                            size: 12,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Text(
                              projectdata.name,
                              style: kMobileSectionTitleText,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        projectdata.description,
                        style: kMobileSubTitleText,
                      ),
                    ),
                    const Spacer(),
                    const Divider(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                            onPressed: () async {
                              final Uri url = Uri.parse(projectdata.link);
                              await launchUrl(url);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: kPrimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                padding: const EdgeInsets.all(20)),
                            child: Text(
                              'View Project',
                              style: kMobileButtonText,
                            )),
                      ),
                    )
                  ],
                ),
              ));
  }
}
