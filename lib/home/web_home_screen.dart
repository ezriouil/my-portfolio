import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/common/widgets/custom_icon_with_btn.dart';
import 'package:portfolio/home/home_controller.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';
import 'package:portfolio/utils/constants/custom_sizes.dart';
import 'package:portfolio/utils/responsive/responsive.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class WebHomeScreen extends Responsive {
  const WebHomeScreen({
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
            color: CustomColors.PRIMARY_1,
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset("assets/logos/logo_light.png", height: 70),
                const Spacer(),
                Row(
                  children: [
                    Text("Home", style: Theme.of(context).textTheme.titleLarge),
                    SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_SECTIONS),
                    InkWell(
                      onTap: controller.onAboutClick,
                      child: Text("About",
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                    SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_SECTIONS),
                    InkWell(
                      onTap: controller.onSubmitClick,
                      child: Text("Skills",
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                    SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_SECTIONS),
                    InkWell(
                      onTap: controller.onProjectsClick,
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
                      onTap: controller.onHireMeClick,
                      backgroundColor: CustomColors.WHITE,
                      icon: Icons.alternate_email_outlined,
                      textColor: CustomColors.PRIMARY_1,
                      iconColor: CustomColors.PRIMARY_1),
                ),
              ],
            ),
          ),

          /*__________ MAIN SECTION _________*/
          Container(
            width: getWidth(context),
            color: CustomColors.PRIMARY_1,
            padding: EdgeInsets.only(
                left: CustomSizes.WEB_SPACE_BETWEEN_SECTIONS,
                top: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
            child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("I'm a\nMOBILE\nDeveloper",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    fontSize: 80,
                                    letterSpacing: 8,
                                    fontFamily: "Vip",
                                    color: CustomColors.PRIMARY_3,
                                    height: 0.9)),
                        SizedBox(height: CustomSizes.WEB_SPACE_DEFAULT),
                        Text("I build things for mobile",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(fontSize: 30, letterSpacing: 8)),
                        SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                        Row(children: [
                          InkWell(
                              onTap: controller.onTwitterClick,
                              child: Image.asset(
                                  "assets/icons/social_media/twitter.png",
                                  height: 40,
                                  width: 40,
                                  color: CustomColors.PRIMARY_3)),
                          SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                          InkWell(
                              onTap: controller.onGithubClick,
                              child: Image.asset(
                                  "assets/icons/social_media/github.png",
                                  height: 40,
                                  width: 40,
                                  color: CustomColors.PRIMARY_3)),
                          SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                          InkWell(
                              onTap: controller.onLinkedinClick,
                              child: Image.asset(
                                  "assets/icons/social_media/linkedin.png",
                                  height: 40,
                                  width: 40,
                                  color: CustomColors.PRIMARY_3)),
                          SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                          InkWell(
                              onTap: controller.onInstagramClick,
                              child: Image.asset(
                                  "assets/icons/social_media/instagram.png",
                                  height: 40,
                                  width: 40,
                                  color: CustomColors.PRIMARY_3)),
                          SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                          InkWell(
                              onTap: controller.onWhatsappClick,
                              child: Image.asset(
                                  "assets/icons/social_media/whatsapp.png",
                                  height: 40,
                                  width: 40,
                                  color: CustomColors.PRIMARY_3)),
                        ])
                      ],
                    )),
                Spacer(),
                Expanded(
                    flex: 2,
                    child: Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        WidgetAnimator(
                            atRestEffect: WidgetRestingEffects.pulse(),
                            child: Image.asset("assets/images/lightning.png",
                                height: 550, fit: BoxFit.cover)),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              "assets/images/med.jpg",
                              fit: BoxFit.cover,
                              height: 450,
                              width: 350,
                              alignment: Alignment.topCenter,
                            ))
                      ],
                    ))
              ],
            ),
          ),

          /*__________ MAIN SECTION (SECOND) _________*/
          Container(
            width: getWidth(context),
            color: CustomColors.PRIMARY_1,
            padding: EdgeInsets.only(
              bottom: CustomSizes.WEB_SPACE_BETWEEN_SECTIONS,
              left: CustomSizes.WEB_SPACE_DEFAULT,
              right: CustomSizes.WEB_SPACE_DEFAULT,
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    Text("3 ",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                fontSize:
                                    CustomSizes.WEB_SPACE_BETWEEN_SECTIONS * 1.5)),
                    Text("YEARS OF\nEXPERIENCE",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                                letterSpacing: 2,
                                fontSize: CustomSizes.WEB_SPACE_DEFAULT/ 2,
                                color: CustomColors.PRIMARY_3))
                  ],
                ),
                SizedBox(width: CustomSizes.WEB_SPACE_DEFAULT),
                Row(
                  children: [
                    Text("12 ",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                fontSize:
                                    CustomSizes.WEB_SPACE_BETWEEN_SECTIONS * 1.5)),
                    Text("PROJECTS COMPLETED\nROUND THE WORLD",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                                letterSpacing: 2,
                                fontSize: CustomSizes.WEB_SPACE_DEFAULT / 2,
                                color: CustomColors.PRIMARY_3))
                  ],
                ),
                const Spacer(),
                Image.asset("assets/icons/languages/flutter_icon.png",
                    color: CustomColors.PRIMARY_3, width: 60, height: 60),
                SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                Image.asset("assets/icons/languages/java_icon.png",
                    color: CustomColors.PRIMARY_3, width: 60, height: 60),
                SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                Image.asset("assets/icons/languages/kotlin_icon.png",
                    color: CustomColors.PRIMARY_3, width: 60, height: 60),
                SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                Image.asset("assets/icons/languages/swift_icon.png",
                    color: CustomColors.PRIMARY_3, width: 60, height: 60),
                SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                Image.asset("assets/icons/languages/android_studio_icon.png",
                    color: CustomColors.PRIMARY_3, width: 60, height: 60),
                SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                Image.asset("assets/icons/languages/vs_code_icon.png",
                    color: CustomColors.PRIMARY_3, width: 60, height: 60),
              ],
            ),
          ),

          /*__________ ABOUT ME + PROJECTS + SKILLS + CONTACT _________*/
          Container(
            width: getWidth(context),
            color: CustomColors.PRIMARY_3,
            padding: EdgeInsets.all(CustomSizes.WEB_SPACE_BETWEEN_SECTIONS),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*__________ ABOUT ME _________*/
                Text("About me",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: CustomColors.PRIMARY_1)),
                SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                Text(
                    "As A Mobile Developer,\nI Am Responsible For Designing\nAnd Developing Mobile Apps.\nMy Primary Focus Is To Create Responsive\nUser-Friendly Experiences That Meet\nThe Needs Of A Diverse Online Audience.",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: CustomColors.PRIMARY_1.withOpacity(0.6),
                        fontSize: 24,
                        wordSpacing: 2)),
                SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_SECTIONS),
                /*__________ SKILLS _________*/
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    WidgetAnimator(
                      atRestEffect:
                          WidgetRestingEffects.pulse(curve: Curves.easeInBack),
                      child: Image.asset("assets/images/lightning.png",
                          height: 450),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Skills",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(color: CustomColors.PRIMARY_1)),
                          SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                          Text("Technologies I've been working with recently",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                      color: CustomColors.PRIMARY_1
                                          .withOpacity(0.6),)),
                          SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "assets/icons/languages/flutter_icon.png",
                                  color: CustomColors.PRIMARY_2,
                                  width: 80,
                                  height: 80),
                              SizedBox(
                                  width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                              Image.asset(
                                  "assets/icons/languages/java_icon.png",
                                  color: CustomColors.PRIMARY_2,
                                  width: 80,
                                  height: 80),
                              SizedBox(
                                  width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                              Image.asset(
                                  "assets/icons/languages/kotlin_icon.png",
                                  color: CustomColors.PRIMARY_2,
                                  width: 80,
                                  height: 80),
                              SizedBox(
                                  width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                              Image.asset(
                                  "assets/icons/languages/swift_icon.png",
                                  color: CustomColors.PRIMARY_2,
                                  width: 80,
                                  height: 80),
                              SizedBox(
                                  width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                              Image.asset(
                                  "assets/icons/languages/android_studio_icon.png",
                                  color: CustomColors.PRIMARY_2,
                                  width: 80,
                                  height: 80),
                              SizedBox(
                                  width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                              Image.asset(
                                  "assets/icons/languages/vs_code_icon.png",
                                  color: CustomColors.PRIMARY_2,
                                  width: 80,
                                  height: 80),
                            ],
                          ),
                          SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                  "assets/icons/languages/firebase_icon.png",
                                  color: CustomColors.PRIMARY_2,
                                  width: 80,
                                  height: 80),
                              SizedBox(
                                  width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                              Image.asset(
                                  "assets/icons/languages/python_icon.png",
                                  color: CustomColors.PRIMARY_2,
                                  width: 80,
                                  height: 80),
                              SizedBox(
                                  width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                              Image.asset(
                                  "assets/icons/languages/html_icon.png",
                                  color: CustomColors.PRIMARY_2,
                                  width: 80,
                                  height: 80),
                              SizedBox(
                                  width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                              Image.asset("assets/icons/languages/css_icon.png",
                                  color: CustomColors.PRIMARY_2,
                                  width: 80,
                                  height: 80),
                              SizedBox(
                                  width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                              Image.asset(
                                  "assets/icons/languages/figma_icon.png",
                                  color: CustomColors.PRIMARY_2,
                                  width: 80,
                                  height: 80),
                              SizedBox(
                                  width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                              Image.asset(
                                  "assets/icons/languages/xcode_icon.png",
                                  color: CustomColors.PRIMARY_2,
                                  width: 80,
                                  height: 80),
                            ],
                          )
                        ])
                  ],
                ),
                SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_SECTIONS),
                /*__________ PROJECTS _________*/
                Text("Projects",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: CustomColors.PRIMARY_1)),
                SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS / 2),
                Text("Some Things I've built so far.",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: CustomColors.PRIMARY_1.withOpacity(0.6),
                        fontSize: 24)),
                SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                Container(
                  width: getWidth(context),
                  height: 400,
                  child: ListView.builder(
                      itemCount: controller.projects.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) => Padding(
                            padding: EdgeInsets.all(
                                CustomSizes.WEB_SPACE_BETWEEN_ITEMS / 2),
                            child: Container(
                              width: 300,
                              padding: EdgeInsets.all(
                                  CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        CustomColors.PRIMARY_1,
                                        CustomColors.PRIMARY_3
                                      ],
                                      begin: AlignmentDirectional.topCenter,
                                      end: AlignmentDirectional.bottomCenter),
                                  border:
                                      Border.all(color: CustomColors.PRIMARY_1),
                                  borderRadius: BorderRadius.circular(
                                      CustomSizes.WEB_SPACE_BETWEEN_ITEMS / 2)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                                    child: Image.asset(
                                        controller.projects[index].image,
                                        fit: BoxFit.cover,
                                        height: 200,
                                        width: getWidth(context)),
                                  ),
                                  Text(
                                    controller.projects[index].title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                            color: CustomColors.PRIMARY_1),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    controller.projects[index].description,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                            color: CustomColors.PRIMARY_1),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  CustomIconWithButton(
                                      text: "Source Code",
                                      image:
                                          "assets/icons/social_media/github.png",
                                      backgroundColor: CustomColors.PRIMARY_1,
                                      textColor: CustomColors.WHITE,
                                      onTap: () {
                                        print(controller.projects[index].link);
                                      },
                                      iconColor: CustomColors.WHITE)
                                ],
                              ),
                            ),
                          )),
                ),
                /*__________ CONTACT ME _________*/
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getWidth(context) / 4,
                      vertical: CustomSizes.WEB_SPACE_BETWEEN_SECTIONS*2),
                  child: Column(
                    children: [
                      Text("Let's Discuss On Something Cool Together", style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: CustomColors.PRIMARY_1)),
                      SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                      TextField(
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: CustomColors.BLACK),
                        decoration: InputDecoration(
                            hintText: "Full Name",
                            labelStyle: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: CustomColors.BLACK),
                            contentPadding: EdgeInsets.all(
                                CustomSizes.WEB_SPACE_BETWEEN_ITEMS)),
                      ),
                      SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                      TextField(
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: CustomColors.BLACK),
                        decoration: InputDecoration(
                            hintText: "Phone",
                            labelStyle: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: CustomColors.BLACK),
                            contentPadding: EdgeInsets.all(
                                CustomSizes.WEB_SPACE_BETWEEN_ITEMS)),
                      ),
                      SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                      TextField(
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: CustomColors.BLACK),
                        maxLines: 2,
                        decoration: InputDecoration(
                            hintText: "Message",
                            labelStyle: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(color: CustomColors.BLACK),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: CustomSizes.WEB_SPACE_BETWEEN_ITEMS,
                                vertical: CustomSizes.WEB_SPACE_DEFAULT)),
                      ),
                      SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_SECTIONS),
                      CustomIconWithButton(
                          text: "SUBMIT",
                          backgroundColor: CustomColors.PRIMARY_1,
                          textColor: CustomColors.WHITE,
                          onTap: controller.onSubmitClick,
                          iconColor: CustomColors.WHITE,
                          icon: Icons.send),
                      SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: controller.onGithubClick,
                              child: Image.asset(
                                  "assets/icons/social_media/github.png",
                                  height: 40,
                                  width: 40,
                                  color: CustomColors.PRIMARY_2)),
                          SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                          InkWell(
                              onTap: controller.onLinkedinClick,
                              child: Image.asset(
                                  "assets/icons/social_media/linkedin.png",
                                  height: 40,
                                  width: 40,
                                  color: CustomColors.PRIMARY_2)),
                          SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                          InkWell(
                              onTap: controller.onInstagramClick,
                              child: Image.asset(
                                  "assets/icons/social_media/instagram.png",
                                  height: 40,
                                  width: 40,
                                  color: CustomColors.PRIMARY_2)),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          /*__________ FOOTER _________*/
          Container(
            color: CustomColors.PRIMARY_2,
            child: Column(
              children: [
                SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                Image.asset("assets/logos/logo_light.png", height: 150),
                SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                Text("Designed and build by EZIL with Love & Coffee",
                    style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  InkWell(
                      onTap: controller.onTwitterClick,
                      child: Image.asset(
                          "assets/icons/social_media/twitter.png",
                          height: 40,
                          width: 40,
                          color: CustomColors.WHITE)),
                  SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS / 2),
                  InkWell(
                      onTap: () {},
                      child: Image.asset("assets/icons/social_media/github.png",
                          height: 40, width: 40, color: CustomColors.WHITE)),
                  SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS / 2),
                  InkWell(
                      onTap: controller.onLinkedinClick,
                      child: Image.asset(
                          "assets/icons/social_media/linkedin.png",
                          height: 40,
                          width: 40,
                          color: CustomColors.WHITE)),
                  SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS / 2),
                  InkWell(
                      onTap: controller.onInstagramClick,
                      child: Image.asset(
                          "assets/icons/social_media/instagram.png",
                          height: 40,
                          width: 40,
                          color: CustomColors.WHITE)),
                  SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS / 2),
                  InkWell(
                      onTap: controller.onWhatsappClick,
                      child: Image.asset(
                          "assets/icons/social_media/whatsapp.png",
                          height: 40,
                          width: 40,
                          color: CustomColors.WHITE)),
                ]),
                SizedBox(height: CustomSizes.WEB_SPACE_BETWEEN_ITEMS),
              ],
            ),
          )

        ]),
      ),
    );
  }
}