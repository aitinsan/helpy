// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:helpy/src/ui/common/app_colors.dart';
// import 'package:helpy/src/ui/survey/survey_list.page.dart';

// class SurveyPage extends StatefulWidget {
//   SurveyPage({Key? key}) : super(key: key);

//   @override
//   State<SurveyPage> createState() => _SurveyPageState();
// }

// class _SurveyPageState extends State<SurveyPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SvgPicture.asset(
//                     'assets/icons/logo.svg',
//                     width: 52,
//                     height: 52,
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   const Text(
//                     'Helpy',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 100,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text(
//                     'Опрос',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(
//                     height: 16,
//                   ),
//                   Text(
//                     'Если вы стали жертвой насилия пожалуйста не молчите. ',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   SizedBox(
//                     height: 8,
//                   ),
//                   Text(
//                     'Пройдите опрос и ответьте на вопросы. Позвольте нам помочь вам.',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ],
//               ),
//               Expanded(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           CupertinoPageRoute(
//                             builder: ((context) => SurveyListPage()),
//                           ),
//                         );
//                       },
//                       style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all(AppColors.pink),
//                         shape:
//                             MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                         ),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: const [
//                           Padding(
//                             padding: EdgeInsets.symmetric(vertical: 18),
//                             child: Text('Пройти опрос'),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 18,
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: const Text(
//                         'Пропустить',
//                         style: TextStyle(color: AppColors.pink),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
