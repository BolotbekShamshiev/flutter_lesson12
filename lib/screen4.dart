// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:lesson12_practice/screen1.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
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
          'Новая заявка',
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
            Container(
              height: 40,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff14141414).withOpacity(0.08),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Text(
                        'Авто',
                        style: TextStyle(
                          color: Color(0xff828282),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xff27AE60),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff14141414).withOpacity(0.08),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Text(
                        'Спецтехника',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            CommonCard(
              title: 'Выбрать технику',
              usersIcon: Icons.keyboard_arrow_down,
              color: Color(0xff27AE60),
            ),
            SizedBox(height: 20),
            CommonCard(
              title: 'Тип запчасти',
              usersIcon: Icons.keyboard_arrow_down,
              color: Color(0xff27AE60),
            ),
            SizedBox(height: 20),
            CommonCard(
              title: 'Название / каталожный номер',
              usersIcon: Icons.keyboard_arrow_down,
              color: Colors.transparent,
            ),
            SizedBox(height: 20),
            Text(
              '  Дополнительная информация',
              style: TextStyle(
                color: Color(0xff4F4F4F),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.centerLeft,
              height: 96,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xffF2F2F2),
                  width: 2,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.centerLeft,
                  height: 48,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xffF2F2F2),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Шт',
                        style: TextStyle(
                          color: Color(0xff828282),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.centerLeft,
                  height: 48,
                  width: 220,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xffF2F2F2),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Основная группа',
                        style: TextStyle(
                          color: Color(0xff828282),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xff27AE60),
                        size: 24,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            CommonRow(
              title: ' Включить доставку в цену',
              usersIcon: Icons.check,
              color: Colors.transparent,
            ),
            SizedBox(height: 40),
            CommonCard(
              title: 'Способ доставки',
              usersIcon: Icons.keyboard_arrow_down,
              color: Color(0xff27AE60),
            ),
            SizedBox(height: 20),
            CommonCard(
              title: 'Место получения',
              usersIcon: Icons.keyboard_arrow_down,
              color: Color(0xff27AE60),
            ),
            SizedBox(height: 40),
            CommonRow(
              title: ' Искать только в моем городе',
              usersIcon: Icons.check,
              color: Colors.green,
            ),
            SizedBox(height: 40),
            CommonCard(
              title: 'Тип запчасти',
              usersIcon: Icons.keyboard_arrow_down,
              color: Color(0xff27AE60),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Image.asset(
                  'assets/images/bosch.png',
                  width: 80,
                  height: 80,
                ),
                SizedBox(width: 25),
                Image.asset(
                  'assets/images/gus.png',
                  width: 80,
                  height: 80,
                ),
                SizedBox(width: 25),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: Colors.green.withOpacity(0.5),
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 35,
                    color: Colors.green.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            CommonButton(title: 'Разместить заявку'),
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
            MaterialPageRoute(builder: (context) => Screen1()),
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

class CommonCard extends StatelessWidget {
  final String title;
  final IconData usersIcon;
  final Color color;

  const CommonCard({
    Key? key,
    required this.title,
    required this.usersIcon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.centerLeft,
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xffF2F2F2),
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xff828282),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            usersIcon,
            color: color,
            size: 24,
          )
        ],
      ),
    );
  }
}

class CommonRow extends StatelessWidget {
  final String title;
  final IconData usersIcon;
  final Color color;

  const CommonRow({
    Key? key,
    required this.title,
    required this.usersIcon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xff333333),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(),
        Container(
          alignment: Alignment.center,
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Color(0xffBDBDBD),
              width: 2,
            ),
          ),
          child: Icon(
            usersIcon,
            color: Colors.white,
            size: 20,
          ),
        ),
      ],
    );
  }
}
