import 'package:b_28_sultonov_saidmalik_exam_6/controollers/silent_screen_controller.dart';
import 'package:b_28_sultonov_saidmalik_exam_6/services/constants/colors.dart';
import 'package:b_28_sultonov_saidmalik_exam_6/services/constants/strings.dart';
import 'package:b_28_sultonov_saidmalik_exam_6/services/constants/text_styles.dart';
import 'package:b_28_sultonov_saidmalik_exam_6/views/CustomBottomNavigationBar.dart';
import 'package:flutter/material.dart';

class SilentMoodApp extends StatefulWidget {
  const SilentMoodApp({Key? key}) : super(key: key);

  @override
  State<SilentMoodApp> createState() => _SilentMoodAppState();
}

class _SilentMoodAppState extends State<SilentMoodApp> {
  late final HomeController controller;

  @override
  void initState() {
    super.initState();
    controller = HomeController(updater: setState);
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        bottomNavigationBar: AppNavigationBar(controller: controller),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Strings.silent.text,
                      style: AppTextStyles.airbnbCerealApp16.copyWith(
                        color: AppColors.c3F414E,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Image(
                      image: AssetImage(
                        "assets/icons/ic_moon.png",
                      ),
                      width: 28,
                      height: 28,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      Strings.moon.text,
                      style: AppTextStyles.airbnbCerealApp16.copyWith(
                        color: AppColors.c3F414E,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Text(
                Strings.good.text,
                style: AppTextStyles.helveticaNeue28
                    .copyWith(color: AppColors.c3F414E, wordSpacing: 7),
              ),
              Text(
                Strings.we.text,
                style: AppTextStyles.helveticaNeue20
                    .copyWith(color: AppColors.cA1A4B2, wordSpacing: .1),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    height: 210,
                    width: 175,
                    decoration: BoxDecoration(
                      color: AppColors.c8E97FD,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/im_basics.png"),
                        alignment: Alignment.topRight,
                      ),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 85, left: 15),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Strings.basics.text,
                                  style: AppTextStyles.helveticaNeue18
                                      .copyWith(color: AppColors.cFFECCC),
                                ),
                                const SizedBox(height: 9),
                                Text(
                                  Strings.course.text,
                                  style: AppTextStyles.helveticaNeue11
                                      .copyWith(color: AppColors.cFFECCC),
                                ),
                                const SizedBox(height: 40),
                                Text(
                                  Strings.min.text,
                                  style: AppTextStyles.helveticaNeue11
                                      .copyWith(color: AppColors.cFFECCC),
                                ),
                                const SizedBox(width: 26),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 28, right: 5, top: 50),
                              child: Container(
                                alignment: Alignment.center,
                                width: 70,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: AppColors.cFFFFFF,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Text(
                                  Strings.start.text,
                                  style: AppTextStyles.helveticaNeue12
                                      .copyWith(color: AppColors.c3F414E),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 210,
                    width: 175,
                    decoration: BoxDecoration(
                      color: AppColors.cFFC97E,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/im_relaxation.png"),
                        alignment: Alignment.topRight,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 85, left: 15),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Strings.relaxation.text,
                                style: AppTextStyles.helveticaNeue18
                                    .copyWith(color: AppColors.c3F414E),
                              ),
                              const SizedBox(height: 9),
                              Text(
                                Strings.music.text,
                                style: AppTextStyles.helveticaNeue11
                                    .copyWith(color: AppColors.c3F414E),
                              ),
                              const SizedBox(height: 40),
                              Text(
                                Strings.min.text,
                                style: AppTextStyles.helveticaNeue11
                                    .copyWith(color: AppColors.c3F414E),
                              ),
                              const SizedBox(width: 26),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5, top: 50),
                            child: Container(
                              alignment: Alignment.center,
                              width: 70,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: AppColors.c3F414E,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Text(
                                Strings.start.text,
                                style: AppTextStyles.helveticaNeue12
                                    .copyWith(color: AppColors.cFFFFFF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 95,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.c333242,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/im_mask.png"),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 27),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.daily.text,
                        style: AppTextStyles.helveticaNeue18
                            .copyWith(color: AppColors.cFFFFFF),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            Strings.meditation.text,
                            style: AppTextStyles.helveticaNeue11
                                .copyWith(color: AppColors.cFFFFFF),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "●",
                            style: AppTextStyles.helveticaNeue11
                                .copyWith(color: AppColors.cFFFFFF),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            Strings.min.text,
                            style: AppTextStyles.helveticaNeue11
                                .copyWith(color: AppColors.cFFFFFF),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                Strings.recomended.text,
                style: AppTextStyles.helveticaNeue24
                    .copyWith(color: AppColors.c3F414E),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 113,
                          width: 162,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.cafdbc5,
                            image: const DecorationImage(
                              image: AssetImage("assets/images/im_1.png"),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          Strings.focus.text,
                          style: AppTextStyles.helveticaNeue18
                              .copyWith(color: AppColors.c3F414E),
                        ),
                        const SizedBox(height:6 ),
                        Row(
                          children: [
                            Text(
                              Strings.meditation.text,
                              style: AppTextStyles.helveticaNeue11
                                  .copyWith(color: AppColors.cA1A4B2),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "●",
                              style: AppTextStyles.helveticaNeue11
                                  .copyWith(color: AppColors.cA1A4B2),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              Strings.min.text,
                              style: AppTextStyles.helveticaNeue11
                                  .copyWith(color: AppColors.cA1A4B2),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 113,
                          width: 162,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.cafdbc5,
                            image: const DecorationImage(
                              image: AssetImage("assets/images/im_2.png"),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          Strings.happiness.text,
                          style: AppTextStyles.helveticaNeue18
                              .copyWith(color: AppColors.c3F414E),
                        ),
                        const SizedBox(height:6 ),
                        Row(
                          children: [
                            Text(
                              Strings.meditation.text,
                              style: AppTextStyles.helveticaNeue11
                                  .copyWith(color: AppColors.cA1A4B2),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "●",
                              style: AppTextStyles.helveticaNeue11
                                  .copyWith(color: AppColors.cA1A4B2),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              Strings.min.text,
                              style: AppTextStyles.helveticaNeue11
                                  .copyWith(color: AppColors.cA1A4B2),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 113,
                          width: 162,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.cafdbc5,
                            image: const DecorationImage(
                              image: AssetImage("assets/images/im_1.png"),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          Strings.focus.text,
                          style: AppTextStyles.helveticaNeue18
                              .copyWith(color: AppColors.c3F414E),
                        ),
                        const SizedBox(height:6 ),
                        Row(
                          children: [
                            Text(
                              Strings.meditation.text,
                              style: AppTextStyles.helveticaNeue11
                                  .copyWith(color: AppColors.cA1A4B2),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "●",
                              style: AppTextStyles.helveticaNeue11
                                  .copyWith(color: AppColors.cA1A4B2),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              Strings.min.text,
                              style: AppTextStyles.helveticaNeue11
                                  .copyWith(color: AppColors.cA1A4B2),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 113,
                          width: 162,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.cafdbc5,
                            image: const DecorationImage(
                              image: AssetImage("assets/images/im_2.png"),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          Strings.happiness.text,
                          style: AppTextStyles.helveticaNeue18
                              .copyWith(color: AppColors.c3F414E),
                        ),
                        const SizedBox(height:6 ),
                        Row(
                          children: [
                            Text(
                              Strings.meditation.text,
                              style: AppTextStyles.helveticaNeue11
                                  .copyWith(color: AppColors.cA1A4B2),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "●",
                              style: AppTextStyles.helveticaNeue11
                                  .copyWith(color: AppColors.cA1A4B2),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              Strings.min.text,
                              style: AppTextStyles.helveticaNeue11
                                  .copyWith(color: AppColors.cA1A4B2),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
