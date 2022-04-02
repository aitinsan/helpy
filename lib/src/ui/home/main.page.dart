import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helpy/src/ui/common/app_colors.dart';
import 'package:helpy/src/ui/survey/survey.page.dart';
import 'package:helpy/src/ui/survey/survey_list.page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 240, 240),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/logo.svg',
                          width: 52,
                          height: 52,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Helpy',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      // width: double.infinity,
                      decoration: const BoxDecoration(
                          color: AppColors.pink,
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(16))),
                      // padding: const EdgeInsets.all(16),
                      child: const Padding(
                        padding: EdgeInsets.all(24.0),
                        child:
                            const Text('Домашнее насилие - это не про любовь',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const Text(
                      'Подкасты от психологов',
                      style: const TextStyle(
                        // color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Container(
                // padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                height: 70,
                child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          width: 0,
                        ),
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: Container(
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              color: Colors.black,
                              image: DecorationImage(
                                fit: BoxFit.cover,

                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.7),
                                    BlendMode.dstATop),
                                image: AssetImage('assets/images/user.png'),

                                // height: 70,
                                // width: 70,
                              )),
                          child: Center(
                            child: Icon(
                              Icons.play_arrow,
                              size: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    })),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(24),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            'Являетесь ли вы жертвой насилия ?',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 11,
                          ),
                          Image.asset('assets/images/survey.png'),
                          SizedBox(
                            height: 11,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: ((context) => SurveyListPage()),
                                ),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(AppColors.pink),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 18),
                                  child: Text('Пройти опрос'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      'Полезные статьи',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(24),
                              // width: double.infinity,
                              child: Column(
                                children: [
                                  Text(
                                    'Какие принять меры, если вы оказались жертвой бытового насилия',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Image.asset('assets/images/article.png'),
                                  SizedBox(
                                    height: 11,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                            child: Container(
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(24),
                              // width: double.infinity,
                              child: Column(
                                children: [
                                  Text(
                                    'Какие принять меры, если вы оказались жертвой бытового насилия',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Image.asset('assets/images/article.png'),
                                  SizedBox(
                                    height: 11,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                            child: Container(
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(24),
                              // width: double.infinity,
                              child: Column(
                                children: [
                                  Text(
                                    'Какие принять меры, если вы оказались жертвой бытового насилия',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Image.asset('assets/images/article.png'),
                                  SizedBox(
                                    height: 11,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      'Как мы можем вам помочь ?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(24),
                              // width: double.infinity,
                              child: Column(
                                children: [
                                  Image.asset('assets/images/help_how.PNG'),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Text(
                                    'Консультация',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                            child: Container(
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(24),
                              // width: double.infinity,
                              child: Column(
                                children: [
                                  Image.asset('assets/images/help_how_2.PNG'),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Text(
                                    'Чат с пережившим ...',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      'Полезные видоематериалы',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(24),
                              // width: double.infinity,
                              child: Column(
                                children: [
                                  Text(
                                    'Я - жертва насилия',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      fit: BoxFit.cover,

                                      // colorFilter: ColorFilter.mode(
                                      //     Colors.black.withOpacity(0.7),
                                      //     BlendMode.dstATop),
                                      image: AssetImage(
                                          'assets/images/article.png'),

                                      // height: 70,
                                      // width: 70,
                                    )),
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Center(
                                        child: Icon(
                                          Icons.play_arrow,
                                          size: 36,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                            child: Container(
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(24),
                              // width: double.infinity,
                              child: Column(
                                children: [
                                  Text(
                                    'Я - жертва насилия',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      fit: BoxFit.cover,

                                      // colorFilter: ColorFilter.mode(
                                      //     Colors.black.withOpacity(0.7),
                                      //     BlendMode.dstATop),
                                      image: AssetImage(
                                          'assets/images/article.png'),

                                      // height: 70,
                                      // width: 70,
                                    )),
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Center(
                                        child: Icon(
                                          Icons.play_arrow,
                                          size: 36,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                            child: Container(
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.all(24),
                              // width: double.infinity,
                              child: Column(
                                children: [
                                  Text(
                                    'Я - жертва насилия',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      fit: BoxFit.cover,

                                      // colorFilter: ColorFilter.mode(
                                      //     Colors.black.withOpacity(0.7),
                                      //     BlendMode.dstATop),
                                      image: AssetImage(
                                          'assets/images/article.png'),

                                      // height: 70,
                                      // width: 70,
                                    )),
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Center(
                                        child: Icon(
                                          Icons.play_arrow,
                                          size: 36,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            'Стань частью чего-то большего  ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      'Стань частью чего-то большего  ',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(24),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            'Жертвы домашнего насилия',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Присоединяйся к нам. У нас ты всегда найдешь поддержку и мы выслушаем тебя. Мы помогаем друг другу пережить тяжелые моменты в жизни. \n\nПомни, ты не одна',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Image.asset('assets/images/group.png'),
                          SizedBox(
                            height: 11,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: ((context) => SurveyListPage()),
                                ),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(AppColors.pink),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 18),
                                  child: Text('Присоединиться к группе'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]))));
  }
}
