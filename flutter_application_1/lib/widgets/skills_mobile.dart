import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: Column(
                          children: [
                            //platforms
                            for(int i=0; i<platformItems.length;i++)
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                color: CustomColor.bgLight1,
                                  borderRadius: BorderRadius.circular(5),
                              ),
                              child: ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                                leading : Image.asset(
                                platformItems[i]["img"],
                                width: 26),
                                title: Text(platformItems[i]["title"]),
                              ),
                            ),
                            const SizedBox(height: 50),
      
                            //skills
                            Wrap(
                              spacing: 10,
                              runSpacing: 20,
                              alignment: WrapAlignment.center,
                              children: [
                                for(int i=0; i< skillItems.length; i++)
                                  Chip(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16,
                                    ),
                                    backgroundColor: CustomColor.bgLight2,
                                    label: Text(skillItems[i]["title"]),
                                    avatar: Image.asset(skillItems[i]["img"]),
                                    ),
                              ],
                            ),
                            const SizedBox(height: 20,),
                          
                            //languages
                            Wrap(
                              spacing: 10,
                              runSpacing: 20,
                              alignment: WrapAlignment.center,
                              children: [
                                for(int i=0; i< languageItems.length; i++)
                                  Chip(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16,
                                    ),
                                    backgroundColor: CustomColor.bgLight2,
                                    label: Text(languageItems[i]["title"]),
                                    avatar: Image.asset(languageItems[i]["img"]),
                                    ),
                              ],
                            ),
                          ],
                        ),
    );
  }
}