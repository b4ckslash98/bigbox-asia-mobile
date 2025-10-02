import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../lib.dart';
import '../cubit/home_cubit.dart';

class ClientHomeContent extends StatefulWidget {
  const ClientHomeContent({super.key});

  @override
  State<ClientHomeContent> createState() => _ClientHomeContentState();
}

class _ClientHomeContentState extends State<ClientHomeContent>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    // Listener untuk sinkronisasi TabController dengan state
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        context.read<HomeCubit>().changeTabIndex(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double appBarHeight = MediaQuery.of(context).padding.top;

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        // Sinkronisasi TabController dengan state
        if (_tabController.index != state.currentTabIndex) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _tabController.animateTo(state.currentTabIndex);
          });
        }

        return Scaffold(
          body: Column(
            children: [
              // Header + TabBar
              Container(
                padding: EdgeInsets.only(
                    top: appBarHeight + 8, left: 16, right: 16, bottom: 12),
                decoration: const BoxDecoration(color: Color(0xffFF6739)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Back & Title
                    const Text(
                      "Dashboard Client",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "selamat datang kembali ",
                      style: TextStyle(fontSize: 12, color: Colors.white70),
                    ),
                    const SizedBox(height: 12),
                    // TabBar Custom
                    Container(
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        spacing: 10,
                        children: [
                          buildTabItem(0, "Overview"),
                          buildTabItem(1, "Analytics"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Content
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    OverviewView(),
                    AnalyticsView(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildTabItem(int index, String label) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final isSelected = state.currentTabIndex == index;

        return GestureDetector(
          onTap: () {
            context.read<HomeCubit>().changeTabIndex(index);
          },
          child: Container(
            width: 100,
            decoration: BoxDecoration(
              color: isSelected ? Colors.white : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: isSelected ? Color(0xffFF6739) : Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildTabContent(String type) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        buildCard(
            "$type 1", "Detail tentang $type 1. Ini adalah deskripsi singkat."),
        buildCard(
            "$type 2", "Detail tentang $type 2. Ini adalah deskripsi singkat."),
      ],
    );
  }

  Widget buildCard(String title, String desc) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text(desc, style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
