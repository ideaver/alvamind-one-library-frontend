import 'package:alvamind_library/app/asset/app_assets.dart';
import 'package:alvamind_library/model/country_model.dart';

List<CountryModel> countries = [
  CountryModel(
    name: 'Indonesia',
    countryCode: 'ID',
    languageCode: 'id',
    phoneCode: '+62',
    flag: AppAssets.flagID,
  ),
  CountryModel(
    name: 'USA',
    countryCode: 'US',
    languageCode: 'en',
    phoneCode: '+1',
    flag: AppAssets.flagUS,
  ),
];
