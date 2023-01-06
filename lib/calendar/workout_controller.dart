import 'package:get/get.dart';
import 'package:intl/intl.dart';

class WorkoutController extends GetxController {
  RxInt isCount = 0.obs;
  DateTime selectedValue = DateTime.now();
  RxString formatted = ''.obs;
  RxInt selectedIndex = 0.obs;
  RxString headerMonth = ''.obs;
  RxString backDate = DateFormat('dd, MMMM yyyy').format(DateTime.now()).toString().obs;
  RxString shoulderDate = DateFormat('dd, MMMM yyyy').format(DateTime.now()).toString().obs;
  RxString pushUpDate = DateFormat('dd, MMMM yyyy').format(DateTime.now()).toString().obs;
  RxList<String> weightType = ['Kg', 'Lb'].obs;
  RxString selectedWeightType = 'Lb'.obs;
  RxInt currentVerticalIntValue = 49.obs;
}
