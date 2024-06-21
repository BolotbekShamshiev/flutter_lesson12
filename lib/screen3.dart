import 'package:flutter/material.dart';
import 'package:lesson12_practice/screen1.dart';
import 'package:lesson12_practice/screen4.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xff27AE60),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Заявка №12345644',
          style: TextStyle(
            color: Color(0xff333333),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
        actions: [
          Image.asset(
            'assets/images/notification.png',
            height: 24,
            width: 24,
          ),
          SizedBox(width: 20),
          Image.asset(
            'assets/images/buy.png',
            height: 24,
            width: 24,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/gus.png',
                  width: 96,
                  height: 96,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '17.06.2024',
                        style: TextStyle(
                          color: Color(0xff828282),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Гусеница в сборе',
                        style: TextStyle(
                          color: Color(0xff333333),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'SHANTU / Бульдозер / Ходовка',
                        style: TextStyle(
                          color: Color(0xff219653),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              color: Color(0xff27AE60).withOpacity(0.4),
              width: double.infinity,
              height: 1,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 230,
                  width: 350,
                  // color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(
                        title_left: 'Количество (шт):',
                        title_right: '10',
                      ),
                      SizedBox(height: 10),
                      CommonText(
                        title_left: 'Включить доставку в цену:',
                        title_right: 'Да',
                      ),
                      SizedBox(height: 10),
                      CommonText(
                        title_left: 'Способ доставки:',
                        title_right: 'СДЭК',
                      ),
                      SizedBox(height: 10),
                      CommonText(
                        title_left: 'Место получения:',
                        title_right: 'Якутск',
                      ),
                      SizedBox(height: 10),
                      CommonText(
                        title_left: 'Искать:',
                        title_right: 'только в моем городе',
                      ),
                      SizedBox(height: 10),
                      CommonText(
                        title_left: 'Тип запчасти:',
                        title_right: 'Оригинал',
                      ),
                      SizedBox(height: 10),
                      CommonText(
                        title_left: 'Налогообложение:',
                        title_right: 'с НДС',
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Карточка техники',
                        style: TextStyle(
                          color: Color(0xff2D9CDB),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              color: Color(0xff27AE60).withOpacity(0.4),
              width: double.infinity,
              height: 1,
            ),
            SizedBox(height: 20),
            Text(
              'Новая оригинальная форсунка от завода  произво-дителя подходит на спец технику, и еще пару Новая оригинальная форсунка от завода  произво-дителя подходит на спец технику, и еще пару',
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Свернуть',
              style: TextStyle(
                color: Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 30),
            CommonButton(title: 'Сообщения'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff219653),
        elevation: 2,
        highlightElevation: 2,
        shape: CircleBorder(),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Screen4()),
          );
        },
        child: Text(
          '+',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class CommonText extends StatelessWidget {
  final String title_left;
  final String title_right;

  const CommonText({
    super.key,
    required this.title_left,
    required this.title_right,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title_left,
            style: TextStyle(
              color: Color(0xff828282),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              overflow: TextOverflow.clip,
            ),
          ),
        ),
        SizedBox(width: 10),
        Flexible(
          fit: FlexFit.tight,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              title_right,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
