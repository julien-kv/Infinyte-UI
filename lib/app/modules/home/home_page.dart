import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinyte_ui/app/common/util/utils.dart';
import 'package:infinyte_ui/app/common/values/app_colors.dart';
import 'package:infinyte_ui/app/common/values/app_images.dart';
import 'package:infinyte_ui/app/common/values/styles/app_text_style.dart';
import 'package:infinyte_ui/app/widgets/asset_allocation_widget.dart';
import 'package:infinyte_ui/app/widgets/bottom_arrowed_container.dart';
import 'package:infinyte_ui/app/widgets/container_card.dart';
import 'package:infinyte_ui/app/widgets/container_wrapper.dart';
import 'package:infinyte_ui/app/widgets/curved_lines.dart';
import 'package:infinyte_ui/app/widgets/custom_appbar.dart';
import 'package:infinyte_ui/app/widgets/price_chart.dart';
import 'package:infinyte_ui/app/widgets/right_pointed_container.dart';

import '../../common/values/styles/dimens.dart';
import '../../widgets/allocation_item.dart';
import '../../widgets/bottomNavBar/custom_bottom_navigation_bar.dart';
import '../../widgets/bottomNavBar/custom_botton_nav_bar_item.dart';
import '../../widgets/wealth_status.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        appBar: CustomAppBar(
          title: "INFINYTE LOGO",
        ),
        body: Stack(
          children: [
            SizedBox(
              width: 1.sw,
              height: 1.sh * 0.8,
              child: const CurvedLines(),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Hey Deepak,",
                    style: AppTextStyle.boldStyle.copyWith(fontSize: 35),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Cheers to you!!!🎊 \nYou\’re doing great at managing your wealth!",
                    style: AppTextStyle.regularStyle
                        .copyWith(fontSize: 20, color: AppColors.homesubTitle),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                const WealthStatus(
                    status: "Good", labelText: "Your Wealth Status"),
                SizedBox(
                  height: 20.h,
                ),
                const RightPointedContainer(
                  topText: "Net assets you’ve ",
                  bottomText: "₹ 10,00,000",
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: ContainerCard(
                        topText: "Total Assets you’ve",
                        bottomText: "₹ 13,00,000",
                        borderRadius:
                            BorderRadius.horizontal(right: Radius.circular(20)),
                      ),
                    ),
                    SizedBox(
                      width: 22.w,
                    ),
                    const Expanded(
                      child: ContainerCard(
                        topText: "Liabilities you’ve",
                        bottomText: "₹ 3,30,000",
                        borderRadius:
                            BorderRadius.horizontal(left: Radius.circular(20)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                //ContainerWrapper(child: child),
                ContainerWrapper(
                  child: AssetAllocation(
                    topText: "Have a look at your\n asset allocation",
                    allocationItems: [
                      AllocationItem(
                          allocationItemName: "Mutual Funds",
                          allotedAmount:
                              Utils.getCurrencyInDecimalFormat(25000),
                          amountInPercentage: 25,
                          indicatorColor: const Color(0xffFAC4B3)),
                      AllocationItem(
                          allocationItemName: "Crypto",
                          allotedAmount:
                              Utils.getCurrencyInDecimalFormat(25000),
                          amountInPercentage: 25,
                          indicatorColor: const Color(0xff6F90E8)),
                      AllocationItem(
                          allocationItemName: "Bonds",
                          allotedAmount:
                              Utils.getCurrencyInDecimalFormat(25000),
                          amountInPercentage: 20,
                          indicatorColor: const Color(0xffBED7C8)),
                      AllocationItem(
                          allocationItemName: "Private Equity",
                          allotedAmount:
                              Utils.getCurrencyInDecimalFormat(25000),
                          amountInPercentage: 10,
                          indicatorColor: const Color(0xffEDD6E1)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                SizedBox(
                  height: 19.h,
                ),
                BottomArrowedcontainer(),
                SizedBox(
                  height: 19.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text("Checkout your wealth growth",
                      style: AppTextStyle.boldStyle
                          .copyWith(fontSize: Dimens.fontSize16)),
                ),
                SizedBox(
                  height: 19.h,
                ),
                const PriceChart(),
              ],
            )
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(items: [
          CustomBottomNavigationBarItem(
            icon: AppImages.bottomBarItem,
          ),
          CustomBottomNavigationBarItem(
            icon: AppImages.bottomBarItem,
          ),
          CustomBottomNavigationBarItem(
            icon: AppImages.bottomBarItem,
          )
        ]));
  }
}
