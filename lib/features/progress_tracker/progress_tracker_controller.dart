import 'package:get/get.dart';

import '../../core/data/models/tracker_models.dart';
import '../../core/resources/assets.dart';

class ProgressTrackerController extends GetxController {
  List tracker = [
    const TrackerModels(imageUrl: Assets.frontfacing),
    const TrackerModels(imageUrl: Assets.leftfacing),
    const TrackerModels(imageUrl: Assets.backfacing),
    const TrackerModels(imageUrl: Assets.leftfacing2),
  ];
}
