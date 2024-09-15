import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payuung/data/financial_product_menu.dart';
import 'package:payuung/utils/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItemWidget extends StatelessWidget {
  final FinancialProductMenu menu;
  final Function() callback;

  const MenuItemWidget({super.key, required this.menu, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: callback,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svg/${menu.icon}.svg', height: 60, width: 60,),
              Text(menu.title, style: TextStyle(fontSize: 14, color: Utils.blackColor), textAlign: TextAlign.center,),
            ],
          )
        ),
        if (menu.isNew)
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Colors.red
              ),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: const Text('New', style: TextStyle(fontSize: 10, color: Colors.white)),
            ),
          ),
      ],
    );
  }
}
