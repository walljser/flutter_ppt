class PPTConstants {
  static double defaultScreenWidth = 720.0;
  static double defaultScreenHeight = 1280.0;

  static const APP_ID = {
    "PREPRODUCTION": "a95b6e85-3744-4a80-9a41-d60ad02bd8de",
    "PRODUCTION": "0ad3a484-aa38-45eb-ad70-0417317feacd",
    "PRODUCTION_TEST": "2daaba07-2294-4dea-89ae-ee83ce975267",
  };

  static const ENV = {
    "HK": "HK",
    "AWS": "AWS",
    "AWS_CA": "AWS_CA",
    "AWS_BH": "AWS_BH",
    "PRODUCTION": "PRODUCTION",
    "PREPRODUCTION": "PREPRODUCTION",
  };

  final _env = ENV["HK"];

  final _sdp_app_id = APP_ID["PRODUCTION_TEST"];
}
