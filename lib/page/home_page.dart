import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constant/colors.dart';
import '../widget/camera_tab_widget.dart';
import '../widget/text_tab_widget.dart';
import 'chat_view.dart';

const labelPaddingTab = 10.0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 1;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: secondaryDark,
    ));
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: _currentIndex,
    )..addListener(() {
        setState(() {
          _currentIndex = _tabController.index;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "WhatsApp",
          style: textStyle.headline1,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            color: textColor,
            icon: const Icon(
              Icons.search_rounded,
            ),
          ),
          IconButton(
            onPressed: () {},
            color: textColor,
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          labelPadding: const EdgeInsets.all(labelPaddingTab),
          indicatorPadding: EdgeInsets.zero,
          isScrollable: true,
          indicatorColor: greenDark,
          tabs: [
            const CameraTabWidget(),
            TextTabWidget(
              isActive: _currentIndex == 1,
              type: TextTabType.chat,
            ),
            TextTabWidget(
              isActive: _currentIndex == 2,
              type: TextTabType.status,
            ),
            TextTabWidget(
              isActive: _currentIndex == 3,
              type: TextTabType.panggilan,
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text("Halaman kamera akan segera datang")),
          ChatView(),
          Center(child: Text("Halaman status akan segera datang")),
          Center(child: Text("Halaman panggilan akan segera datang")),
        ],
      ),
    );
  }
}
