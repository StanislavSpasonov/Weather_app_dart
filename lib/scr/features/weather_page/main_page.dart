import 'package:flutter/material.dart';
import 'package:weather_home/scr/core/assets/app_icons.dart';
import 'package:weather_home/scr/core/assets/app_images.dart';
import 'package:weather_home/scr/core/styles/colors/colors.dart';
import 'package:weather_home/scr/core/styles/text_styles/text_styles.dart';
import 'package:weather_home/scr/core/widgets/app_bar_icon_button.dart';
import 'package:weather_home/scr/core/widgets/main_padding.dart';
import 'package:http/http.dart' as http;
import 'package:weather_home/scr/features/city_search_page/presentation/city_search_page.dart';

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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CitySearchPage()));
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
              ),
              TextButton(
                onPressed: () async {
                  final url = Uri.http(
                    'dataservice.accuweather.com',
                    'currentconditions/v1/215854',
                    {'apikey': 'rYV6RIu503f0dI4vSwuX8QfoygoNZrYq'},
                  );
                  print('start');
                  print(url);
                  try {
                    var response = await http.get(url);
                    print('get data');
                    print(response.statusCode);
                  } catch (e) {
                    print(e);
                  }
                },
                child: Text('get Wether'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
