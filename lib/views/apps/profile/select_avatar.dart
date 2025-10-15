import 'package:incident/controller/apps/profile/profile_controller.dart';
import 'package:incident/helpers/localizations/locale.dart';
import 'package:incident/helpers/logger/logger.dart';
import 'package:incident/helpers/theme/admin_theme.dart';
import 'package:incident/helpers/my_widgets/my_button.dart';
import 'package:incident/helpers/my_widgets/my_container.dart';
import 'package:incident/helpers/my_widgets/my_spacing.dart';
import 'package:incident/helpers/my_widgets/my_text.dart';
import 'package:incident/helpers/constant/images.dart';
import 'package:incident/views/apps/profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectAvatar extends StatelessWidget {
  final ProfileController controller;
  const SelectAvatar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        Get.back();
      },
      child: Scaffold(
          backgroundColor: AdminTheme.theme.contentTheme.white,
          appBar: AppBar(
            backgroundColor: AdminTheme.theme.contentTheme.white,
            surfaceTintColor: AdminTheme.theme.contentTheme.white,
            elevation: 0,
            title: MyText.titleMedium(LocaleKeys.SelectAvatar,
                style: GoogleFonts.poppins(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: AdminTheme.theme.contentTheme.k1E1E1E,
                )),
            leading: GestureDetector(
              onTap: () {
                Get.offNamed(
                  "/profileDetail",
                );
              },
              child: Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Icon(
                  Icons.keyboard_arrow_left_sharp,
                  size: 24.sp,
                  color: AdminTheme.theme.contentTheme.black,
                ),
              ),
            ),
            leadingWidth: 50.w,
            titleSpacing: 8,
            toolbarHeight: 70,
          ), // endDra
          body: GetBuilder<ProfileController>(
            builder: (_) {
              return GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                shrinkWrap: true,
                itemCount: Images.avatars.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1),
                itemBuilder: (context, index) => Obx(() => InkWell(
                    onTap: () {
                      controller.selectedAvatarImageIndex(index);
                      controller.selectedAvatarImageName(
                          Images.avatars[index].split("avatar/").last);
                      controller.selectedAvatarImagePath(Images.avatars[index]);
                      controller.update();
                      logI(
                          "PATH===${controller.selectedAvatarImagePath.value}");
                      logI("PATH===${Images.avatars[index]}");
                    },
                    child: MyContainer.bordered(
                        borderColor: controller.selectedAvatarImagePath.value ==
                                Images.avatars[index]
                            ? AdminTheme.theme.contentTheme.black
                            : Colors.transparent,
                        bordered: controller.selectedAvatarImagePath.value ==
                                Images.avatars[index]
                            ? true
                            : false,
                        width: 120,
                        paddingAll: 0,
                        borderRadiusAll: 8,
                        child:
                            Image.asset(Images.avatars[index], width: 120)))),
              );
            },
          ),
          bottomNavigationBar: MyButton.large(
            onPressed: () async {
              controller.profileFiles.clear();
              controller.profileImageID("");
              Get.to(() => ProfileDetails());
            },
            elevation: 1,
            padding: MySpacing.xy(20, 22),
            block: true,
            backgroundColor: AdminTheme.theme.contentTheme.primary,
            child: MyText.bodySmall(
              LocaleKeys.Upload.tr,
              fontWeight: 600,
              fontSize: 15.sp,
              color: AdminTheme.theme.contentTheme.background,
            ),
          ).paddingSymmetric(horizontal: 15.w, vertical: 10)),
    );
  }
}
