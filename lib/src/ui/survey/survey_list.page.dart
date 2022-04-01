// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helpy/src/ui/common/app_colors.dart';
import 'package:helpy/src/ui/home/home.page.dart';
import 'package:helpy/src/ui/survey/survey_list.page.dart';

class SurveyListPage extends StatefulWidget {
  SurveyListPage({Key? key}) : super(key: key);

  @override
  State<SurveyListPage> createState() => _SurveyListPageState();
}

class _SurveyListPageState extends State<SurveyListPage> {
  PageController controller = PageController();
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            _buildSurvey(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (currentPage != 2) {
                          controller.animateToPage(
                            currentPage++,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear,
                          );
                        } else {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: ((context) => HomePage()),
                            ),
                          );
                        }
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
                            child: Text('Пропустить'),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 18,
                    // ),
                    // InkWell(
                    //   onTap: () {},
                    //   child: const Text(
                    //     'Пропустить',
                    //     style: TextStyle(color: AppColors.pink),
                    //   ),
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSurvey() {
    return Expanded(
      child: PageView(
        physics: NeverScrollableScrollPhysics(),
        pageSnapping: false,
        controller: controller,
        children: [
          _buildTest(
              question: 'Подвергались ли вы насилию ?', answers: ['Да', 'Нет']),
          _buildTest(question: 'page2 ', answers: ['fdsa', 'fdsd', 'fds']),
        ],
      ),
    );
  }

  Widget _buildTest({required String question, required List<String> answers}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16,
          ),
          Flexible(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              // shrinkWrap: true,
              itemCount: answers.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    _buildButton(answers[index]),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String text) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        // overlayColor: MaterialStateProperty(),
        onTap: () {},
        child: Row(
          children: [
            SizedBox(
              width: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18),
              child: Text(
                text,
                style: TextStyle(color: AppColors.pink),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
