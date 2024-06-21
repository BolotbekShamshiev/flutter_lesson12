import 'package:flutter/material.dart';
import 'package:lesson12_practice/screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

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
          'Предложения',
          style: TextStyle(
            color: Color(0xff333333),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
        actions: [
          Image.asset(
            'assets/images/actionable.png',
            height: 24,
            width: 24,
          ),
          SizedBox(width: 20),
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 210,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  width: 1,
                  color: Color(0xff27AE60),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 2,
                    color: Color(0xff14141414).withOpacity(0.08),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                            text: 'Заявка',
                            style: TextStyle(
                              color: Color(0xff219653),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              WidgetSpan(child: SizedBox(width: 5)),
                              TextSpan(
                                text: '12345644756',
                                style: TextStyle(
                                  color: Color(0xff828282),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(width: 50),
                      Text(
                        '17.06.2024',
                        style: TextStyle(
                          color: Color(0xff828282),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        onSelected: (value) {},
                        itemBuilder: (BuildContext bc) {
                          return const [
                            PopupMenuItem(
                              child: Text("About"),
                              value: '/about',
                            ),
                            PopupMenuItem(
                              child: Text("Contact"),
                              value: '/contact',
                            )
                          ];
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/gus.png',
                        width: 56,
                        height: 56,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Гусеница в сборе',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontSize: 18,
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
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 140,
                        // color: Colors.red,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    ' ',
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
                                      ' ',
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
                            ),
                            SizedBox(height: 10),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Папка 1',
                                    style: TextStyle(
                                      color: Color(0xff27AE60),
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
                                      ' ',
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
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 150,
                        // color: Colors.yellow,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Актуальность (дни):',
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
                                      '3',
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
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Количество (шт):',
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
                                      '1',
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Предложение продавцов',
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  alignment: Alignment.center,
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Color(0xff219653),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    '10',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(15),
              height: 600,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  width: 1,
                  color: Color(0xffF2F2F2),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 2,
                    color: Color(0xff14141414).withOpacity(0.08),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                            text: 'Предложение',
                            style: TextStyle(
                              color: Color(0xff219653),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              WidgetSpan(child: SizedBox(width: 5)),
                              TextSpan(
                                text: '№114',
                                style: TextStyle(
                                  color: Color(0xff828282),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(width: 50),
                      Text(
                        '17.06.2024',
                        style: TextStyle(
                          color: Color(0xff828282),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        onSelected: (value) {},
                        itemBuilder: (BuildContext bc) {
                          return const [
                            PopupMenuItem(
                              child: Text("About"),
                              value: '/about',
                            ),
                            PopupMenuItem(
                              child: Text("Contact"),
                              value: '/contact',
                            )
                          ];
                        },
                      ),
                    ],
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
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/gus.png',
                        width: 56,
                        height: 56,
                      ),
                      SizedBox(width: 70),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '3 200 ₽',
                            style: TextStyle(
                              color: Color(0xff4F4F4F),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: '2 500 ₽',
                              style: TextStyle(
                                color: Color(0xff27AE60),
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                              children: [
                                WidgetSpan(child: SizedBox(width: 5)),
                                TextSpan(
                                  text: 'с НДС',
                                  style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: '●',
                              style: TextStyle(
                                color: Color(0xff6FCF97),
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                              children: [
                                WidgetSpan(child: SizedBox(width: 5)),
                                TextSpan(
                                  text: 'В наличии',
                                  style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
                        height: 80,
                        width: 320,
                        // color: Colors.red,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Доставка:',
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
                                      'Включена в цену',
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
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Доступное количество:',
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
                                      '2 (шт.)',
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
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Склад:',
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
                                      'Якутск',
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
                      Image.asset(
                        'assets/images/osoo.png',
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'ООО Чиню быстро и не дорого',
                          style: TextStyle(
                            color: Color(0xff333333),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Container(
                        height: 28,
                        width: 66,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star_rate,
                              color: Color(0xffF2C94C),
                            ),
                            Text(
                              '4,3',
                              style: TextStyle(
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 48,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor: Color(0xffF4FAF6),
                              foregroundColor: Color(0xff219653),
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              print('Сообщения #3');
                            },
                            child: Text('Сообщения'),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 48,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor: Color(0xff219653),
                              foregroundColor: Color(0xffFFFFFF),
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              print('Выбрать');
                            },
                            child: Text('Выбрать'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
            MaterialPageRoute(builder: (context) => Screen3()),
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
