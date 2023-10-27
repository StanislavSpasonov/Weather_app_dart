import 'package:flutter/material.dart';
import 'package:weather_home/scr/core/assets/app_icons.dart';
import 'package:weather_home/scr/core/assets/app_images.dart';
import 'package:weather_home/scr/core/styles/colors/colors.dart';
import 'package:weather_home/scr/core/styles/text_styles/text_styles.dart';
import 'package:weather_home/scr/core/widgets/app_bar_icon_button.dart';
import 'package:weather_home/scr/core/widgets/main_padding.dart';

const conditionalWeather = '9º ☁️';
const descriptionWather = 'You will need 🧣 and 🧤 in';
const city = 'London!';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage(AppImages.locationBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          shadowColor: AppColors.transparent,
          backgroundColor: AppColors.transparent,
          leading: AppBarIconButton(
            icon: AppIcons.nearMe,
            onPressed: () {
              //todo add geolocation
            },
          ),
          actions: [
            AppBarIconButton(
              icon: AppIcons.locationCity,
              onPressed: () {
                //todo add list city
              },
            ),
          ],
        ),
        body: MainPadding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Text(
                conditionalWeather,
                style: AppTextStyles.title,
              ),
              const Spacer(),
              Text(
                descriptionWather,
                style: AppTextStyles.subTitle,
                textAlign: TextAlign.right,
              ),
              Text(
                city,
                style: AppTextStyles.subTitle,
                textAlign: TextAlign.right,
              )
            ],
          ),
        ),
      ),
    );
  }
}
