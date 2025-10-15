import 'package:incident/helpers/constant/images.dart';
import 'package:incident/helpers/extensions/string.dart';
import 'package:incident/helpers/services/navigation_service.dart';
import 'package:incident/helpers/theme/app_notifier.dart';
import 'package:incident/helpers/utils/ui_mixins.dart';
import 'package:incident/helpers/my_widgets/my_button.dart';
import 'package:incident/helpers/my_widgets/my_spacing.dart';
import 'package:incident/helpers/my_widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin, UIMixin {
  @override
  void initState() {
    // initDeepLinks();
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              15.verticalSpace,
              MyText.bodyLarge(
                'charge_your_electric_vehicle_1'.tr(),
                fontWeight: 700,
                fontSize: 32.sp,
                color: contentTheme.black,
                textAlign: TextAlign.center,
              ),
              MyText.bodyLarge(
                'charge_your_electric_vehicle_2'.tr(),
                fontWeight: 700,
                fontSize: 28.sp,
                color: contentTheme.black,
                textAlign: TextAlign.center,
              ),
              25.verticalSpace,
              MyText.bodyMedium(
                'charge_your_electric_vehicle_3'.tr(),
                fontWeight: 500,
                fontSize: 20.sp,
                color: Colors.grey.shade600,
                textAlign: TextAlign.center,
              ).paddingSymmetric(horizontal: 30),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyButton.large(
                backgroundColor: contentTheme.onPrimary,
                block: true,
                onPressed: () {
                  Get.toNamed('/auth/login');
                },
                elevation: 1,
                borderRadiusAll: 8,
                child: MyText.bodySmall(
                  'login'.tr(),
                  fontWeight: 600,
                  fontSize: 16.sp,
                  color: contentTheme.white,
                ),
              ).paddingSymmetric(horizontal: 20),
              MySpacing.height(10),
              MyButton.outlined(
                block: true,
                backgroundColor: contentTheme.onPrimary,
                borderColor: contentTheme.onPrimary,
                onPressed: () {
                  Get.toNamed('/auth/register');
                },
                elevation: 1,
                borderRadiusAll: 8,
                padding: MySpacing.xy(20, 12),
                child: MyText.bodyLarge(
                  'sign_up'.tr(),
                  fontWeight: 600,
                  fontSize: 16.sp,
                  color: contentTheme.onPrimary,
                ),
              ).paddingSymmetric(horizontal: 20),
              MySpacing.height(15),
            ],
          )
        ],
      ),
    );
  }
}
