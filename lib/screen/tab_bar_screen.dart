import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tab_bottom_nav/data/example_data.dart';
import 'package:tab_bottom_nav/screen/detail_screen.dart';
import 'package:tab_bottom_nav/component/example_view_widget.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with TickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: exampleItems.length,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const tabIndicator = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      gradient: LinearGradient(
        //배경 그라데이션 적용
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.orange,
          Colors.brown,
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Screen'),
        bottom: TabBar(
          tabs: exampleItems
              .map((e) => Tab(text: e.title, icon: Icon(Icons.tab_rounded)))
              .toList(),
          indicator: tabIndicator,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          controller: _tabController,
          onTap: (index){
            log('onTap! curIndex :: $index ${exampleItems[index].title}');
          },
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: exampleItems.map((e) => ExampleViewWidget(e)).toList(),
      ),
    );
  }
}
