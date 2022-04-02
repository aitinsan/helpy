import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helpy/src/ui/common/app_colors.dart';

class ForumPage extends StatefulWidget {
  ForumPage({Key? key}) : super(key: key);

  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 240, 240),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color(0xFFFFF6F9),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Информационная поддержка',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Поделись своей историей, если твоему случаю будет необходима публичная огласка, то мы им поделимся. Ты можешь сделать это анонимно',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   CupertinoPageRoute(
                          //     builder: ((context) => SurveyListPage()),
                          //   ),
                          // );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.pink),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                              child: Text('Рассказать историю'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   CupertinoPageRoute(
                          //     builder: ((context) => SurveyListPage()),
                          //   ),
                          // );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                              child: Text(
                                'Обратиться анонимно',
                                style: TextStyle(color: AppColors.pink),
                              ),
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
                  'Почитай истории других',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/avatar.png'),
                          SizedBox(
                            width: 10,
                          ),
                          // Icon(Icons.ios_share_outlined)
                          Column(
                            children: [
                              Text('Лучик света'),
                              Text('сегодня в 16:00'),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   CupertinoPageRoute(
                              //     builder: ((context) => SurveyListPage()),
                              //   ),
                              // );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 255, 225, 234)),
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
                                  padding: EdgeInsets.symmetric(horizontal: 0),
                                  child: Text(
                                    'Подписаться',
                                    style: TextStyle(color: AppColors.pink),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Группы важны, тут главное не быть одному и не заедать себя. Стала ходить на группы и прислушиваться к другим таким же женщинам. Среди них были даже кандидаты наук. Я поняла, что это не стыдно - это страшно, страшно, что насилия так много. \n\nНа занятиях мы разговаривали, делали какие-то упражнения. После этого я приходила домой и смотрела на все другими глазами. Рекомендация была - уходить, изолировать себя от опасности, изолировать детей.',
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Image.asset('assets/images/forum.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
