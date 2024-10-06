import 'package:flutter/material.dart';
import 'package:todo/core/utils/ultility.dart';

import '../../../core/utils/colors_const.dart';
import '../../../core/utils/constant.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) => Container(
        // width: 100,
        height: 50,
        decoration: BoxDecoration(
            color: ColorConstant.whiteColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20)),
        child: IconButton(
            onPressed: () => null,
            icon: Row(
              children: [
                Icon(
                  Icons.menu_rounded,
                  color: ColorConstant.whiteColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(StringConstant.menu,style: Utility.whiteNormalText,),
                )
              ],
            )),
      );
}
