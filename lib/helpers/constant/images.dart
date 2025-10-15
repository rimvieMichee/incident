import 'dart:math';
import 'dart:ui';

class Images {
  static String imagePath = 'assets/images';
  static String iconPath = 'assets/icon';

  static String logoIcon = '$imagePath/logo_icon_dark.png';
  static String appLogo = '$imagePath/logo/login.png';
  static String onboarding = '$imagePath/logo/login.png';
  static String success = '$imagePath/app/success.png';
  static String mapView = '$imagePath/app/map.png';
  static String circleCheck = '$imagePath/app/circle_check.png';


  // static String ebike = '$imagePath/app/bike.png';


  static String bikeIcon = '$imagePath/app/bike_icon.png';
  static String stationDoors = '$imagePath/app/station_doors.png';
  static String zazu = '$imagePath/app/zazu.png';
  static String stationImage = '$imagePath/app/stationImage.png';
  static String greenBike = '$imagePath/app/greenBike.png';
  static String batSwapIcon = '$imagePath/app/batSwapIcon.png';
  static String swap_success = '$imagePath/app/swap_success.png';
  static String swap_fail = '$imagePath/app/swap_fail.png';

  static String Calendar_light = '$iconPath/Calendar_light.png';
  static String upload = '$iconPath/upload.png';
  static String station = '$iconPath/station.png';
  static String station2 = '$iconPath/station2.png';
  static String activity2 = '$iconPath/activity2.png';
  static String activity = '$iconPath/activity.png';
  static String wallet2 = '$iconPath/wallet2.png';
  static String wallet = '$iconPath/wallet.png';
  static String setting2 = '$iconPath/setting2.png';
  static String setting = '$iconPath/setting.png';
  static String scan = '$iconPath/scan.png';
  static String history = '$iconPath/history.png';
  static String history2 = '$iconPath/history2.png';
  static String dashboard = '$iconPath/dashboard.png';
  static String dashboard2 = '$iconPath/dashboard2.png';
  static String map = '$iconPath/map.png';
  static String group6 = '$iconPath/Group6.png';
  static String tune = '$iconPath/tune.png';
  static String charge = '$iconPath/charge.png';
  static String plug = '$iconPath/plug.png';
  static String send = '$iconPath/send.png';
  static String park = '$iconPath/park.png';
  static String rest = '$iconPath/rest.png';
  static String person = '$iconPath/person.png';
  static String wifi = '$iconPath/wifi.png';
  static String entertain = '$iconPath/entertain.png';
  static String mainten = '$iconPath/mainten.png';
  static String gun = '$iconPath/gun.png';
  static String rightSideGun = '$iconPath/right_side_gun.png';
  static String chargingStation = '$iconPath/chargingStation.png';

  static String subtract = '$iconPath/Subtract.png';
  static String smallChargingStation = '$iconPath/smallChargingStation.png';
  static String plugElectricVChar =
      '$iconPath/plug-electric-vehicle-charging-line-icon-ev-swap_station-sign.png';

  static String sound = '$iconPath/sound.png';
  static String download = '$iconPath/download.png';
  static String otherPayment = '$iconPath/other_payment.png';
  static String mobileMoney = '$iconPath/mobile_money.png';
  static String visa = '$iconPath/visa.png';
  static String paypal = '$iconPath/paypal.png';
  static String darkVisa = '$iconPath/darkVisa.png';
  static String darkPaypal = '$iconPath/Darkpaypal.png';
  static String moovMoney = '$iconPath/moov_money.png';
  static String orangeMoney = '$iconPath/orange_money.png';
  static String location = '$iconPath/location.png';
  static String logout = '$iconPath/logout.png';
  static String about = '$iconPath/about.png';
  static String help = '$iconPath/help.png';
  static String language = '$iconPath/language.png';
  static String lightDarkMode = '$iconPath/light_dark-mode.png';
  static String myVehicle = '$iconPath/my-vehicle.png';
  static String paymentMethod = '$iconPath/payment-method.png';
  static String privacyPolicy = '$iconPath/privacy-policy.png';
  static String rfid = '$iconPath/rfid.png';
  static String securityLock = '$iconPath/security-lock.png';
  static String floatHat = '$iconPath/float_hat.png';
  static String facebook = '$iconPath/facebook.png';
  static String phone = '$iconPath/phone.png';
  static String whatsApp = '$iconPath/whats_app.png';
  static String urgency = '$iconPath/urgency.png';
  static String timer = '$iconPath/timer.png';
  static String deleteAC = '$iconPath/deleteAC.png';
  static String edit = '$iconPath/edit.png';
  static String mapLogo = '$iconPath/map_logo.png';
  static String darkChargingStation = '$iconPath/darkChargingStation.png';
  static String navigation = '$iconPath/navigation.png';
  static String bottomBarDividerIcon = '$iconPath/bottombar_divider.png';
  static String searchIcon = '$iconPath/search.png';
  static String eyeIcon = "$iconPath/Frame.png";
  static String successIcon = '$iconPath/success.png';


  static String missionImage = "$imagePath/mission.png";


  ///----------------- Dummy Image -----------------------------------//

  static List<String> avatars =
      List.generate(9, (index) => 'assets/avatar/${index + 1}.png');
  static List<String> colors = [
    "assets/color/blue.png",
    "assets/color/green.png",
    "assets/color/red.png",
    "assets/color/yellow.png",
  ];
  // static List<String> squareImages =
  //     List.generate(15, (index) => 'assets/images/dummy/${index + 1}.jpg');
  // static List<String> landscapeImages =
  //     List.generate(4, (index) => 'assets/images/dummy/l${index + 1}.jpg');
  // static List<String> portraitImages =
  //     List.generate(3, (index) => 'assets/images/dummy/p${index + 1}.jpg');
  // static List<String> dashboard = List.generate(
  //     6, (index) => 'assets/images/dummy/dashboard-${index + 1}.jpg');
  // static List<String> fileManager = List.generate(
  //     2, (index) => 'assets/images/dummy/fileManager-${index + 1}.jpg');
  // static List<String> landing = List.generate(
  //     3, (index) => 'assets/images/dummy/landing-${index + 1}.jpg');
  // static List<String> social = List.generate(
  //     5, (index) => 'assets/images/dummy/social-${index + 1}.jpg');
  // static List<String> product =
  //     List.generate(7, (index) => 'assets/images/dummy/h${index + 1}.jpg');
  // static List<String> login =
  //     List.generate(6, (index) => 'assets/images/dummy/login${index + 1}.jpg');
  // static List<String> nft =
  //     List.generate(1, (index) => 'assets/images/dummy/nft.jpg');
  // static List<String> cartoon =
  //     List.generate(8, (index) => 'assets/images/dummy/m${index + 1}.jpg');
  // static List<String> cartoonBackground =
  //     List.generate(8, (index) => 'assets/images/dummy/a${index + 1}.jpg');
  //
  // static List<String> shoppingImage = List.generate(
  //     10, (index) => 'assets/images/shopping_images/photo${index + 1}.jpg');

  /// Food
  static String fruits = 'assets/images/food/fruits.jpg';
  static String fruitsJuice = 'assets/images/food/fruit_juice.jpg';
  static String veggies = 'assets/images/food/veggies.jpg';

  /// Common Icons path

  static const String path = 'assets/icon';
  static const String editProfile = '$path/edit_profile.png';

  static const String WithoutHand1Icon = '$path/Without Hand blue.png';
  // static const String person = '$path/person.png';

  static String randomImage(List<String> images) {
    return images[Random().nextInt(images.length)];
  }

  static String getImageBasedOnFirstName(String firstName) {
    // Create a hash value from the first name
    int hash = firstName.hashCode;

    // Use the hash value to generate a consistent index within the range of the image list
    int index = hash % avatars.length;

    return avatars[index];
  }

  static Color generateColorFromString(String input) {
    final hash = input.toUpperCase().hashCode;
    int r = (hash & 0xFF0000) >> 16;
    int g = (hash & 0x00FF00) >> 8;
    int b = (hash & 0x0000FF);

    // Ensure the colors are not too dark or too light by adjusting within a balanced range
    r = (r + 128).clamp(100, 200);
    g = (g + 128).clamp(100, 200);
    b = (b + 128).clamp(100, 200);

    // Avoid generating pure white
    if (r == 255 && g == 255 && b == 255) {
      r = 254;
      g = 254;
      b = 254; // Slightly adjust to avoid pure white
    }

    return Color.fromARGB(255, r, g, b);
  }
}
