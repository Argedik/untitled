import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/pages/dashboard/dashboard_controller.dart';
import 'package:untitled/pages/dashboard/dashboard_page.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/news_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<GetPage> list;
    return GetMaterialApp(
      initialRoute: '/',
      getPages: list = [
        GetPage(
          name: '/',
          page: () => DashboardPage(),
          binding: DashboardBinding(),
        ),
        GetPage(
          name: '/1',
          page: () => HomePage(),
          binding: DashboardBinding(),
        ),
        GetPage(
          name: '/2',
          page: () => AlertDialog(),
          binding: DashboardBinding(),
        ),
        GetPage(
          name: '/3',
          page: () => NewsPage(),
          binding: DashboardBinding(),
        ),
      ],
      home: StartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double genislik = MediaQuery.of(context).size.width;
    double yukseklik = MediaQuery.of(context).size.height;
    return GetBuilder<DashBoardController>(
        init: DashBoardController(),
        builder: (controller) {
          return Scaffold(
            body: Container(
              height: yukseklik,
              width: genislik,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xffffaa00),
                    const Color(0xfe79d70f),
                    const Color(0xfc79d70f),
                  ],
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 12,
                          child: Text(''),
                        ),
                        Expanded(
                          flex: 18,
                          child: Stack(
                            children: [
                              TextButton(
                                onPressed: () {
                                  //Get.to<DashBoardController>(DashboardPage(),
                                  //arguments: 0);
                                  //Get.find<DashBoardController>().changeTabIndex(0);
                                  Get.to(() => DashboardPage());

                                  /*GetPage(
                                  name: '/',
                                  page: () => DashboardPage(),
                                  binding: DashboardBinding());*/
                                  //Navigator.pushNamed(context, HomePage.routeName);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 66,
                                  width: 275,
                                  child: Container(
                                    width: genislik * 0.4,
                                    child: Row(
                                      children: [
                                        Flexible(
                                          child: Text(
                                            "Lorem Ipsum, dizgi ve bask?? end??strisinde ",
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 18,
                                              color: const Color(0xffedf4f2),
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //kenarl??klara k??vr??m
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(200.0),
                                      topRight: Radius.circular(20.0),
                                      bottomRight: Radius.circular(200.0),
                                      bottomLeft: Radius.circular(20.0),
                                    ),

                                    //renk ayarlar??
                                    gradient: RadialGradient(
                                      //renk dalgas??n??n x ve y eksenleri
                                      //center: Alignment(0.0, 0.0),
                                      radius: 2,
                                      colors: [
                                        const Color(0xfcf5a31a),
                                        const Color(0xfcd32626)
                                      ],
                                      //renk tonlar??nda 0-1 aras??ndaki duru?? yerleri
                                      stops: [0.0, 1.0],
                                      tileMode: TileMode.mirror,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x29000000),
                                        offset: Offset(0, 8),
                                        blurRadius: 6,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Alt k??s??m g??r??n??m??
                ],
              ),
            ),
          );
        });
  }
/* istersek kullanabilece??imiz bi oop yap??s??
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  */

}
