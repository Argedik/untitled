import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/pages/dashboard/dashboard_controller.dart';
import 'package:untitled/pages/dashboard/dashboard_page.dart';
import 'package:untitled/pages/home_page.dart';

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
      ],
      home: StartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //import 'package:flutter/services.dart kütüphanesi sayesinde statusbar(telefonun en üstündeki saat pil vs) gizleme
    double genislik = MediaQuery.of(context).size.width;
    double yukseklik = MediaQuery.of(context).size.height;

    return GetBuilder<DashBoardController>(builder: (controller) {
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
              //Orta kısım görünümü

              Container(
                //genişliği ekrana sığdır.
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
                              print("absürt");
                              //Get.to<DashBoardController>(DashboardPage(),
                              //arguments: 0);
                              Get.to(DashboardPage());
                              /*GetPage(
                                  name: '/',
                                  page: () => DashboardPage(),
                                  binding: DashboardBinding());*/
                              print("deneme");
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
                                        "Lorem Ipsum, dizgi ve baskı endüstrisinde ",
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
                              //kenarlıklara kıvrım
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(200.0),
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(200.0),
                                  bottomLeft: Radius.circular(20.0),
                                ),

                                //renk ayarları
                                gradient: RadialGradient(
                                  //renk dalgasının x ve y eksenleri
                                  //center: Alignment(0.0, 0.0),
                                  radius: 2,
                                  colors: [
                                    const Color(0xfcf5a31a),
                                    const Color(0xfcd32626)
                                  ],
                                  //renk tonlarında 0-1 arasındaki duruş yerleri
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
              //Alt kısım görünümü
            ],
          ),
        ),
      );
    });
  }
/* istersek kullanabileceğimiz bi oop yapısı
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  */

}
