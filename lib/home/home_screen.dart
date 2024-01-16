import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/common/widgets/custom_icon_with_btn.dart';
import 'package:portfolio/home/home_controller.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';
import 'package:portfolio/utils/responsive/responsive.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class HomeScreen extends Responsive {
  const HomeScreen({
    super.key,
  });

  @override
  Widget execute(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [

          /*__________ TAP BAR _________*/
          Container(
            padding: EdgeInsets.symmetric(
                vertical: spaceBetweenItems(context) / 3,
                horizontal: spaceBetweenItems(context) / 2),
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              CustomColors.PRIMARY_1,
              CustomColors.PRIMARY_2,
              CustomColors.PRIMARY_2
            ])),
            child: Row(
              children: [
                Image.asset("assets/logos/logo_light.png", height: 70),
                const Spacer(),
                Row(
                  children: [
                    Text("Home", style: Theme.of(context).textTheme.titleLarge),
                    SizedBox(width: spaceDefault(context)),
                    InkWell(
                      onTap: () {},
                      child: Text("About",
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                    SizedBox(width: spaceDefault(context)),
                    InkWell(
                      onTap: () {},
                      child: Text("Skills",
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                    SizedBox(width: spaceDefault(context)),
                    InkWell(
                      onTap: () {},
                      child: Text("Projects",
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                  ],
                ),
                const Spacer(),
                WidgetAnimator(
                  atRestEffect: WidgetRestingEffects.size(effectStrength: 0.9),
                  child: CustomIconWithButton(
                      text: "Hire me",
                      onClick: () {},
                      backgroundColor: CustomColors.WHITE,
                      icon: Icons.alternate_email_outlined,
                      textColor: CustomColors.PRIMARY,
                      iconColor: CustomColors.PRIMARY),
                ),
              ],
            ),
          ),

          /*__________ MAIN SECTION _________*/
          Container(
            width: getWidth(context),
            color: CustomColors.PRIMARY_1,
            padding: EdgeInsets.all(spaceBetweenItems(context)),
            child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("I'm a MOBILE\nDeveloper",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    fontSize: 80,
                                    letterSpacing: 8,
                                    fontFamily: "Vip",
                                    color: CustomColors.PRIMARY_3,
                                    height: 0.9)),
                        SizedBox(height: spaceBetweenItems(context)),
                        Text("I build things for web",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(fontSize: 30, letterSpacing: 8)),
                        SizedBox(height: spaceBetweenItems(context) / 2),
                        Row(children: [
                          InkWell(
                              onTap: () {},
                              child: Image.asset(
                                  "assets/icons/social_media/twitter.png",
                                  height: 40,
                                  width: 40,
                                  color: CustomColors.PRIMARY_3)),
                          SizedBox(width: spaceBetweenItems(context) / 4),
                          InkWell(
                              onTap: () {},
                              child: Image.asset(
                                  "assets/icons/social_media/github.png",
                                  height: 40,
                                  width: 40,
                                  color: CustomColors.PRIMARY_3)),
                          SizedBox(width: spaceBetweenItems(context) / 4),
                          InkWell(
                              onTap: () {},
                              child: Image.asset(
                                  "assets/icons/social_media/linkedin.png",
                                  height: 40,
                                  width: 40,
                                  color: CustomColors.PRIMARY_3)),
                          SizedBox(width: spaceBetweenItems(context) / 4),
                          InkWell(
                              onTap: () {},
                              child: Image.asset(
                                  "assets/icons/social_media/instagram.png",
                                  height: 40,
                                  width: 40,
                                  color: CustomColors.PRIMARY_3)),
                          SizedBox(width: spaceBetweenItems(context) / 4),
                          InkWell(
                              onTap: () {},
                              child: Image.asset(
                                  "assets/icons/social_media/whatsapp.png",
                                  height: 40,
                                  width: 40,
                                  color: CustomColors.PRIMARY_3)),
                        ])
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "assets/images/med.jpg",
                          fit: BoxFit.cover,
                          height: 500,
                          alignment: Alignment.topCenter,
                        )))
              ],
            ),
          ),

          /*__________ MAIN SECTION (SECOND) _________*/
          Container(
            width: getWidth(context),
            color: CustomColors.PRIMARY_1,
            padding: EdgeInsets.symmetric(
                horizontal: spaceDefault(context),
                vertical: spaceBetweenItems(context)),
            child: Row(
              children: [
                Row(
                  children: [
                    Text("3 ",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(fontSize: 80)),
                    Text("YEARS OF\nEXPERIENCE",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontSize: 24, color: CustomColors.PRIMARY_3))
                  ],
                ),
                SizedBox(width: spaceBetweenItems(context)),
                Row(
                  children: [
                    Text("12 ",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(fontSize: 80)),
                    Text("PROJECTS COMPLETED\nROUND THE WORLD",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                fontSize: 24, color: CustomColors.PRIMARY_3))
                  ],
                ),
                const Spacer(),
                Image.asset("assets/icons/languages/flutter_icon.png",
                    color: CustomColors.PRIMARY_3, width: 70, height: 70),
                SizedBox(width: spaceBetweenItems(context) / 2),
                Image.asset("assets/icons/languages/java_icon.png",
                    color: CustomColors.PRIMARY_3, width: 70, height: 70),
                SizedBox(width: spaceBetweenItems(context) / 2),
                Image.asset("assets/icons/languages/kotlin_icon.png",
                    color: CustomColors.PRIMARY_3, width: 70, height: 70),
                SizedBox(width: spaceBetweenItems(context) / 2),
                Image.asset("assets/icons/languages/swift_icon.png",
                    color: CustomColors.PRIMARY_3, width: 70, height: 70),
                SizedBox(width: spaceBetweenItems(context) / 2),
                Image.asset("assets/icons/languages/android_studio_icon.png",
                    color: CustomColors.PRIMARY_3, width: 70, height: 70),
                SizedBox(width: spaceBetweenItems(context) / 2),
                Image.asset("assets/icons/languages/vs_code_icon.png",
                    color: CustomColors.PRIMARY_3, width: 70, height: 70),
              ],
            ),
          ),

          /*__________ ABOUT ME _________*/
          Container(
            width: getWidth(context),
            padding: EdgeInsets.all(spaceBetweenItems(context)),
            color: CustomColors.PRIMARY_3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: spaceBetweenSections(context)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("About me",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(color: CustomColors.PRIMARY_1)),
                          SizedBox(height: spaceBetweenItems(context) / 2),
                          Text(
                              "As A Mobile Developer,\nI Am Responsible For Designing\nAnd Developing Mobile Apps.\nMy Primary Focus Is To Create Responsive\nUser-Friendly Experiences That Meet\nThe Needs Of A Diverse Online Audience.",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      color: CustomColors.PRIMARY_1,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w100)),
                        ],
                      ),
                      WidgetAnimator(
                        atRestEffect: WidgetRestingEffects.wave(),
                        child: Image.asset("assets/images/techno_liens.png",
                            color: CustomColors.PRIMARY_2, height: 300),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: spaceBetweenSections(context)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WidgetAnimator(
                        atRestEffect: WidgetRestingEffects.pulse(),
                        child: Image.asset("assets/images/wind_line.png",
                            color: CustomColors.PRIMARY_2, height: 700),
                      ),
                      Column(children: [
                        Text("My Skills",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(color: CustomColors.PRIMARY_1)),
                        SizedBox(height: spaceBetweenItems(context) / 2),
                        Text("Technologies I've been working with recently",
                            textAlign: TextAlign.end,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: CustomColors.PRIMARY_1,
                                    fontWeight: FontWeight.w100,
                                    fontSize: 24)),
                        SizedBox(height: spaceBetweenItems(context) / 2),
                        Row(
                          children: [
                            Image.asset(
                                "assets/icons/languages/flutter_icon.png",
                                color: CustomColors.PRIMARY_2,
                                width: 70,
                                height: 70),
                            SizedBox(width: spaceBetweenItems(context) / 2),
                            Image.asset("assets/icons/languages/java_icon.png",
                                color: CustomColors.PRIMARY_2,
                                width: 70,
                                height: 70),
                            SizedBox(width: spaceBetweenItems(context) / 2),
                            Image.asset(
                                "assets/icons/languages/kotlin_icon.png",
                                color: CustomColors.PRIMARY_2,
                                width: 70,
                                height: 70),
                            SizedBox(width: spaceBetweenItems(context) / 2),
                            Image.asset("assets/icons/languages/swift_icon.png",
                                color: CustomColors.PRIMARY_2,
                                width: 70,
                                height: 70),
                            SizedBox(width: spaceBetweenItems(context) / 2),
                            Image.asset(
                                "assets/icons/languages/android_studio_icon.png",
                                color: CustomColors.PRIMARY_2,
                                width: 70,
                                height: 70),
                            SizedBox(width: spaceBetweenItems(context) / 2),
                            Image.asset(
                                "assets/icons/languages/vs_code_icon.png",
                                color: CustomColors.PRIMARY_2,
                                width: 70,
                                height: 70),
                          ],
                        ),
                        SizedBox(height: spaceBetweenItems(context) / 2),
                        Row(
                          children: [
                            Image.asset(
                                "assets/icons/languages/firebase_icon.png",
                                color: CustomColors.PRIMARY_2,
                                width: 70,
                                height: 70),
                            SizedBox(width: spaceBetweenItems(context) / 2),
                            Image.asset(
                                "assets/icons/languages/python_icon.png",
                                color: CustomColors.PRIMARY_2,
                                width: 70,
                                height: 70),
                            SizedBox(width: spaceBetweenItems(context) / 2),
                            Image.asset("assets/icons/languages/html_icon.png",
                                color: CustomColors.PRIMARY_2,
                                width: 70,
                                height: 70),
                            SizedBox(width: spaceBetweenItems(context) / 2),
                            Image.asset("assets/icons/languages/css_icon.png",
                                color: CustomColors.PRIMARY_2,
                                width: 70,
                                height: 70),
                            SizedBox(width: spaceBetweenItems(context) / 2),
                            Image.asset("assets/icons/languages/figma_icon.png",
                                color: CustomColors.PRIMARY_2,
                                width: 70,
                                height: 70),
                            SizedBox(width: spaceBetweenItems(context) / 2),
                            Image.asset("assets/icons/languages/xcode_icon.png",
                                color: CustomColors.PRIMARY_2,
                                width: 70,
                                height: 70),
                          ],
                        )
                      ])
                    ],
                  ),
                ),
                Text("My Projects",
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: CustomColors.PRIMARY_2)),
                Text("Some Things I've build so far",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                        color: CustomColors.PRIMARY_2)),
                SizedBox(
                  width: getWidth(context),
                  height: 370,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.zero,
                      itemCount: controller.projects.length,
                      itemBuilder: (BuildContext context, int index) => Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: spaceBetweenItems(context) / 2,
                                horizontal: spaceBetweenItems(context)),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                  width: 270,
                                  padding: const EdgeInsets.all(12.0),
                                  decoration: BoxDecoration(
                                      color: CustomColors.PRIMARY_3,
                                      border: Border.all(
                                          color: CustomColors.PRIMARY_2),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                              controller.projects[index].image,
                                              fit: BoxFit.cover,
                                              height: 200,
                                              width: getWidth(context))),
                                      Text(controller.projects[index].title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge
                                              ?.copyWith(
                                                  color: CustomColors.BLACK),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis),
                                      Text(
                                          controller
                                              .projects[index].description,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                  color: CustomColors.BLACK),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis),
                                      CustomIconWithButton(
                                          text: "view Code",
                                          onClick: () {},
                                          backgroundColor:
                                              CustomColors.PRIMARY_2,
                                          image:
                                              "assets/icons/social_media/github.png",
                                          textColor: CustomColors.WHITE,
                                          iconColor: CustomColors.WHITE),
                                    ],
                                  )),
                            ),
                          )),
                ),
              ],
            ),
          ),

          /*__________ CONTACT _________*/

          /*__________ FOOTER _________*/
          Container(
            color: CustomColors.PRIMARY_2,
            child: Column(
              children: [
                SizedBox(height: spaceBetweenItems(context)),
                Image.asset("assets/logos/logo_light.png", height: 150),
                SizedBox(height: spaceBetweenItems(context)),
                Text("Designed and build by EZIL with Love & Coffee", style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: spaceBetweenItems(context)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  InkWell(
                      onTap: () {},
                      child: Image.asset("assets/icons/social_media/twitter.png",
                          height: 40, width: 40, color: CustomColors.WHITE)),
                  SizedBox(width: spaceBetweenItems(context) / 4),
                  InkWell(
                      onTap: () {},
                      child: Image.asset("assets/icons/social_media/github.png",
                          height: 40, width: 40, color: CustomColors.WHITE)),
                  SizedBox(width: spaceBetweenItems(context) / 4),
                  InkWell(
                      onTap: () {},
                      child: Image.asset("assets/icons/social_media/linkedin.png",
                          height: 40, width: 40, color: CustomColors.WHITE)),
                  SizedBox(width: spaceBetweenItems(context) / 4),
                  InkWell(
                      onTap: () {},
                      child: Image.asset("assets/icons/social_media/instagram.png",
                          height: 40, width: 40, color: CustomColors.WHITE)),
                  SizedBox(width: spaceBetweenItems(context) / 4),
                  InkWell(
                      onTap: () {},
                      child: Image.asset("assets/icons/social_media/whatsapp.png",
                          height: 40, width: 40, color: CustomColors.WHITE)),
                ]),
                SizedBox(height: spaceBetweenItems(context)),
              ],
            ),
          )

        ]),
      ),
    );
  }
}
