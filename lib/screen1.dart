// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:lesson12_practice/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Color(0xff27AE60),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xffFFFFFF),
        ),
        title: Text(
          'Папка 2',
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
        padding: const EdgeInsets.fromLTRB(15, 40, 15, 20),
        child: ListView(
          children: [
            CommonCard(
              applicationNumber: '№412651',
              title: 'Гусеница в сборе',
              additionalTitle: 'Howo / Самосвал / Ходовка',
              imageAvatar: 'assets/images/gus.png',
            ),
            SizedBox(height: 20),
            CommonCard(
              applicationNumber: '№412652',
              title: 'Форсунка Bosch',
              additionalTitle:
                  'Toyota / Land Cruiser Prado / Топливная система',
              imageAvatar: 'assets/images/bosch.png',
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
            MaterialPageRoute(builder: (context) => Screen2()),
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
  final String applicationNumber;
  final String title;
  final String additionalTitle;
  final String imageAvatar;

  const CommonCard({
    Key? key,
    required this.applicationNumber,
    required this.title,
    required this.additionalTitle,
    required this.imageAvatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      // height: 275,
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
                        text: applicationNumber,
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
                imageAvatar,
                width: 56,
                height: 56,
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Color(0xff333333),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      additionalTitle,
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
          Row(
            children: [
              Container(
                height: 50,
                width: 170,
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    SizedBox(height: 10),
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
                  ],
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 140,
                // color: Colors.yellow,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Предложения:',
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
                            'Сообщения:',
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
                              '6',
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
          SizedBox(height: 10),
          CommonButton(title: 'Сообщения'),
        ],
      ),
    );
  }
}

class CommonButton extends StatelessWidget {
  final String title;

  const CommonButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff27AE60),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff27AE60),
          foregroundColor: Color(0xffFFFFFF),
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        onPressed: () {
          print('Сообщения #1');
        },
        child: Text(title),
      ),
    );
  }
}
