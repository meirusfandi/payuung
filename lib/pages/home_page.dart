import 'package:flutter/material.dart';
import 'package:payuung/data/choosen_category_menu.dart';
import 'package:payuung/data/explore_wellness_menu.dart';
import 'package:payuung/data/financial_product_menu.dart';
import 'package:payuung/pages/category_page.dart';
import 'package:payuung/utils/utils.dart';
import 'package:payuung/widgets/menu_item_widget.dart';
import 'package:payuung/widgets/wellness_item_widget.dart';

class HomePage extends StatefulWidget {
  final String routeName = '/home';

  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPrivate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.primaryColor,
      appBar: AppBar(
        backgroundColor: Utils.primaryColor,
        title: const Text('Selamat Datang', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Utils.greyColor
              ),
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person, color: Utils.darkGreyColor)
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(32.0), topRight: Radius.circular(32.0)),
            color: Colors.white
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
            
                // section on choose type
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(32.0)),
                      color: Utils.grey8F7Color
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isPrivate = !isPrivate;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(16)),
                                color: isPrivate ? Utils.primaryColor : Utils.grey8F7Color
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text('Payung Pribadi', style: TextStyle(color: isPrivate ? Colors.white : Utils.grey3D2Color)),
                                ),
                              ),
                            ),
                          )
                        ),
                        Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  isPrivate = !isPrivate;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                                    color: isPrivate ? Utils.grey8F7Color : Utils.primaryColor
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text('Payung Karyawan', style: TextStyle(color: isPrivate ? Utils.grey3D2Color : Colors.white)),
                                  ),
                                ),
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ),
            
                // section on money product
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: _sectionMoneyProduct(),
                ),
            
                // section on category choosen
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: _sectionCategoryChosen(),
                ),
            
                // section on wellness
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: _sectionWellness(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _sectionMoneyProduct() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Product Keuangan', textAlign: TextAlign.start, style: TextStyle(fontSize: 20, color: Utils.blackColor)),
        const SizedBox(height: 8),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.82,
          ),
          itemCount: financialMenu.length,
          itemBuilder: (BuildContext context, int index) {
            return MenuItemWidget(
              menu: financialMenu[index],
              callback: () async {
                showDialog(context: context, builder: (ctx) {
                  return AlertDialog(
                    title: const Text("Action Record:"),
                    content: Text("${financialMenu[index]} clicked"),
                    actions: [
                      InkWell(
                        onTap: () => Navigator.of(ctx).pop,
                      )
                    ],
                  );
                });
              },
            );
          },
        )
      ],
    );
  }

  Widget _sectionCategoryChosen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Kategori Pilihan', textAlign: TextAlign.start, style: TextStyle(fontSize: 20, color: Utils.blackColor)),
        const SizedBox(height: 8),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.82,
          ),
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return (index == 7) ? MenuItemWidget(
              menu: FinancialProductMenu(title: "Lainnya", icon: "ic_test", code: 'others', isNew: false),
              callback: () async {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const CategoryPage()
                ));
              },
            ) : MenuItemWidget(
              menu: chosenCategory[index],
              callback: () async {
                showDialog(context: context, builder: (ctx) {
                  return AlertDialog(
                    title: const Text("Action Record:"),
                    content: Text("${chosenCategory[index]} clicked"),
                    actions: [
                      InkWell(
                        onTap: () => Navigator.of(ctx).pop,
                      )
                    ],
                  );
                });
              },
            );
          },
        )
      ],
    );
  }

  Widget _sectionWellness() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Explore Wellness', textAlign: TextAlign.start, style: TextStyle(fontSize: 20, color: Utils.blackColor)),
        const SizedBox(height: 8),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.82,
          ),
          itemCount: exploreWellness.length,
          itemBuilder: (BuildContext context, int index) {
            return WellnessItemWidget(
              menu: exploreWellness[index],
              callback: () async {
                showDialog(context: context, builder: (ctx) {
                  return AlertDialog(
                    title: const Text("Action Record:"),
                    content: Text("${financialMenu[index]} clicked"),
                    actions: [
                      InkWell(
                        onTap: () => Navigator.of(ctx).pop,
                      )
                    ],
                  );
                });
              },
            );
          },
        )
      ],
    );
  }
}
