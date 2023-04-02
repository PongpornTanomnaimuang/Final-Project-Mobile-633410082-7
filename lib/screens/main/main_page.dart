import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/custom_background.dart';
import 'package:ecommerce_int2/models/product.dart';
import 'package:ecommerce_int2/screens/category/category_list_page.dart';

import 'package:ecommerce_int2/screens/profile_page.dart';
import 'package:ecommerce_int2/screens/search_page.dart';
import 'package:ecommerce_int2/screens/shop/check_out_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'components/custom_bottom_bar.dart';
import 'components/product_list.dart';
import 'components/tab_view.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

List<String> timelines = ['ไม้ประดับ', 'ไม้ยืนต้นดูดฝุ่น', 'ไม้ยืนต้นดูดก๊าซ'];
String selectedTimeline = 'ไม้ประดับ';

List<Product> products = [
  Product(
      'jang.jpg',
      'ต้นจั๋ง (Lady Palm) เป็นอีกหนึ่งไม้ฟอกอากาศยอดนิยมที่อยู่ในตระกูลเดียวกับต้นปาล์ม เป็นพืชที่นิยมปลูกเป็นไม้ประดับทั้งภายในและภายนอกอาคาร',
      'ต้นจั๋ง (Lady Palm) เป็นอีกหนึ่งไม้ฟอกอากาศยอดนิยมที่อยู่ในตระกูลเดียวกับต้นปาล์ม เป็นพืชที่นิยมปลูกเป็นไม้ประดับทั้งภายในและภายนอกอาคาร',
      99.9),
];

class _MainPageState extends State<MainPage>
    with TickerProviderStateMixin<MainPage> {
  late TabController tabController;
  late TabController bottomTabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
    bottomTabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Widget appBar = Container(
      height: kToolbarHeight + MediaQuery.of(context).padding.top,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SearchPage())),
              icon: SvgPicture.asset('assets/icons/search_icon.svg'))
        ],
      ),
    );

    Widget topHeader = Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Flexible(
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedTimeline = timelines[0];
                    products = [
                      Product(
                          'jang.jpg',
                          'ต้นจั๋ง (Lady Palm) เป็นอีกหนึ่งไม้ฟอกอากาศยอดนิยมที่อยู่ในตระกูลเดียวกับต้นปาล์ม เป็นพืชที่นิยมปลูกเป็นไม้ประดับทั้งภายในและภายนอกอาคาร',
                          'ต้นจั๋ง (Lady Palm) เป็นอีกหนึ่งไม้ฟอกอากาศยอดนิยมที่อยู่ในตระกูลเดียวกับต้นปาล์ม เป็นพืชที่นิยมปลูกเป็นไม้ประดับทั้งภายในและภายนอกอาคาร',
                          99.9),
                    ];
                  });
                },
                child: Text(
                  timelines[0],
                  style: TextStyle(
                      fontSize: timelines[0] == selectedTimeline ? 20 : 14,
                      color: darkGrey),
                ),
              ),
            ),
            Flexible(
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedTimeline = timelines[1];
                    products = [
                      Product(
                          'mamuang.jpg',
                          'ต้นมะม่วง ผลมะม่วงนำมากินได้ทั้งดิบและสุก มะม่วงดิบเปลือกสีเขียวเนื้อสีขาวส่วนใหญ่มีรสเปรี้ยว ยกเว้นบางพันธุ์ที่เรียกว่ามะม่วงมัน ส่วนผลสุกจะมีสีเหลืองทั้งเปลือกและเนื้อ กินสด หรือ นำไปทำเป็นอาหารเช่น ข้าวเหนียวมะม่วง',
                          'ต้นมะม่วง ผลมะม่วงนำมากินได้ทั้งดิบและสุก มะม่วงดิบเปลือกสีเขียวเนื้อสีขาวส่วนใหญ่มีรสเปรี้ยว ยกเว้นบางพันธุ์ที่เรียกว่ามะม่วงมัน ส่วนผลสุกจะมีสีเหลืองทั้งเปลือกและเนื้อ กินสด หรือ นำไปทำเป็นอาหารเช่น ข้าวเหนียวมะม่วง',
                          99.99),
                    ];
                  });
                },
                child: Text(timelines[1],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: timelines[1] == selectedTimeline ? 20 : 14,
                        color: darkGrey)),
              ),
            ),
            Flexible(
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedTimeline = timelines[2];
                    products = [
                      Product(
                          'farang.jpg',
                          'ฝรั่ง ชาวยุโรปนิยมบริโภคฝรั่งสุก โดยนำไปทำพายและขนมได้หลายชนิด ส่วนชาวเอเชียนิยมบริโภคฝรั่งแก่จัดแต่ยังไม่สุก และนำไปแปรรูป เช่นทำเป็นฝรั่งดอง ฝรั่งแช่บ๊วย',
                          'ฝรั่ง ชาวยุโรปนิยมบริโภคฝรั่งสุก โดยนำไปทำพายและขนมได้หลายชนิด ส่วนชาวเอเชียนิยมบริโภคฝรั่งแก่จัดแต่ยังไม่สุก และนำไปแปรรูป เช่นทำเป็นฝรั่งดอง ฝรั่งแช่บ๊วย',
                          99.99),
                    ];
                  });
                },
                child: Text(timelines[2],
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: timelines[2] == selectedTimeline ? 20 : 14,
                        color: darkGrey)),
              ),
            ),
          ],
        ));

    Widget tabBar = TabBar(
      tabs: [
        Tab(text: 'ไม้ยืนต้น'),
        Tab(text: 'ไม้ประดับ'),
        Tab(text: 'ดอกไม้'),
      ],
      labelStyle: TextStyle(fontSize: 16.0),
      unselectedLabelStyle: TextStyle(
        fontSize: 14.0,
      ),
      labelColor: darkGrey,
      unselectedLabelColor: Color.fromRGBO(0, 0, 0, 0.5),
      isScrollable: true,
      controller: tabController,
    );

    return Scaffold(
      bottomNavigationBar: CustomBottomBar(controller: bottomTabController),
      body: CustomPaint(
        painter: MainBackground(),
        child: TabBarView(
          controller: bottomTabController,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            SafeArea(
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  // These are the slivers that show up in the "outer" scroll view.
                  return <Widget>[
                    SliverToBoxAdapter(
                      child: appBar,
                    ),
                    SliverToBoxAdapter(
                      child: topHeader,
                    ),
                    SliverToBoxAdapter(
                      child: ProductList(
                        products: products,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: tabBar,
                    )
                  ];
                },
                body: TabView(
                  tabController: tabController,
                ),
              ),
            ),
            CategoryListPage(),
            CheckOutPage(),
            ProfilePage()
          ],
        ),
      ),
    );
  }
}
