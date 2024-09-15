import 'package:flutter/material.dart';
import 'package:payuung/data/explore_wellness_menu.dart';
import 'package:payuung/utils/utils.dart';

class WellnessItemWidget extends StatelessWidget {
  final ExploreWellnessMenu menu;
  final Function() callback;

  const WellnessItemWidget({super.key, required this.menu, required this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: callback,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/png/${menu.icon}.png', height: 80, width: 120,),
            Text(menu.title, style: TextStyle(fontSize: 14, color: Utils.blackColor), textAlign: TextAlign.center,),
            if (menu.isDiscount)
              RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: Utils.convertToIdr(menu.value, 0),
                        style: const TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      TextSpan(
                        text: " ${menu.discountValue} %",
                        style: const TextStyle(
                          color: Colors.red
                        )
                      )
                    ]
                  )
              ),
            Text((menu.isDiscount) ? Utils.convertToIdr(menu.value - (menu.discountValue * menu.value)/100, 0) : Utils.convertToIdr(menu.value, 0))
          ],
        )
    );
  }
}
