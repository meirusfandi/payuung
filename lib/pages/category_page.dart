import 'package:flutter/material.dart';
import 'package:payuung/data/choosen_category_menu.dart';
import 'package:payuung/utils/utils.dart';
import 'package:payuung/widgets/menu_item_widget.dart';

class CategoryPage extends StatelessWidget {
  final String routeName = '/category';
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Semua Kategori"),
        backgroundColor: Colors.white,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
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
                itemCount: chosenCategory.length,
                itemBuilder: (BuildContext context, int index) {
                  return MenuItemWidget(
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
          ),
        ),
      ),
    );
  }
}