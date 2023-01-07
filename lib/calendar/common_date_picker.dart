import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:task/res/app_colors.dart';
import 'package:task/res/strings_utils.dart';
import 'package:task/utils/size_utils.dart';
import 'package:task/widget/app_text.dart';

class CommonDatePicker extends StatefulWidget {
  const CommonDatePicker({Key? key, this.headerMonth, this.onSelectionChanged})
      : super(key: key);
  final RxString? headerMonth;
  final DateRangePickerSelectionChangedCallback? onSelectionChanged;

  @override
  State<CommonDatePicker> createState() => _CommonDatePickerState();
}

class _CommonDatePickerState extends State<CommonDatePicker> {
  final DateRangePickerController _controller = DateRangePickerController();
  RxString headerMonth = ''.obs;
  RxString dropYear = ''.obs;
  RxString dropMonth = ''.obs;
  RxString dropDay = ''.obs;
  RxString dropMonthYear = ''.obs;
  RxString dropMonthDayYear = ''.obs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 2.h,
        ),
        /*       Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _controller.backward!();
                  });
                },
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: ColorRes.whiteColor),
                    height: 30,
                    width: 30,
                    child: const Icon(
                      Icons.arrow_back_ios_sharp,
                      size: 20,
                      color: ColorRes.darkBlackColor,
                    ),
                  ),
                ),
              ),
              Text(
                headerMonth.value,
                style: const TextStyle(color: ColorRes.blueColor, fontWeight: FontWeight.w600, fontSize: 16),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _controller.forward!();
                  });
                },
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: ColorRes.whiteColor),
                    height: 30,
                    width: 30,
                    child: const Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 20,
                      color: ColorRes.darkBlackColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),*/
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  dropMonthDayYear.value,
                  color: AppColor.textColor.withOpacity(0.7),
                  fontWeight: FontWeight.w500,
                  fontSize: SizeUtils.fSize_11(),
                ),
                AppText(
                  AppString.today,
                  color: AppColor.textColor,
                  fontWeight: FontWeight.w600,
                  fontSize: SizeUtils.fSize_18(),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.background.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 4,
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeUtils.horizontalBlockSize * 2,
                    horizontal: SizeUtils.horizontalBlockSize * 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      AppString.timeline,
                      color: AppColor.textColor,
                      fontWeight: FontWeight.w500,
                      fontSize: SizeUtils.fSize_15(),
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      size: SizeUtils.horizontalBlockSize * 5,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.background.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 4,
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeUtils.horizontalBlockSize * 2,
                    horizontal: SizeUtils.horizontalBlockSize * 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      size: SizeUtils.horizontalBlockSize * 5,
                    ),
                    SizedBox(
                      width: SizeUtils.horizontalBlockSize * 1,
                    ),
                    AppText(
                      dropMonthYear.value,
                      color: AppColor.textColor,
                      fontWeight: FontWeight.w500,
                      fontSize: SizeUtils.fSize_15(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 3.h,
        ),
        SizedBox(
          height: 18.w,
          child: SfDateRangePicker(
            controller: _controller,
            onViewChanged: viewChanged,
            selectionRadius: 18,
            headerHeight: 0,
            selectionColor: Colors.transparent,
            onSelectionChanged: widget.onSelectionChanged,
            selectionMode: DateRangePickerSelectionMode.single,
            view: DateRangePickerView.month,
            initialSelectedDate: DateTime.now(),
            initialDisplayDate: DateTime.now(),
            cellBuilder: cellBuilder,
            monthCellStyle: DateRangePickerMonthCellStyle(
              specialDatesDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                // color: Colors.amber,
              ),
              cellDecoration: const BoxDecoration(shape: BoxShape.circle),
            ),
            monthViewSettings: const DateRangePickerMonthViewSettings(
                viewHeaderHeight: 0, numberOfWeeksInView: 1),
            minDate: DateTime(2022, 1, 1),
            maxDate: DateTime(2100, 1, 1),
            allowViewNavigation: true,
          ),
        ),
      ],
    );
  }

  void viewChanged(DateRangePickerViewChangedArgs args) {
    DateTime firstDayOfMonth = DateTime(args.visibleDateRange.startDate!.year,
        args.visibleDateRange.startDate!.month, 1);
    dropMonthDayYear.value =
        DateFormat('MMMM, dd yyyy').format(firstDayOfMonth).toString();
    dropMonthYear.value =
        DateFormat('MMM, yyyy').format(firstDayOfMonth).toString();
  }

  Widget cellBuilder(BuildContext context, DateRangePickerCellDetails details) {
    final bool isSelected = _controller.selectedDate != null &&
        details.date.year == _controller.selectedDate?.year &&
        details.date.month == _controller.selectedDate?.month &&
        details.date.day == _controller.selectedDate?.day;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        dropYear.value = _controller.selectedDate?.year.toString() ?? "";
        dropMonth.value = _controller.selectedDate?.month.toString() ?? "";
        dropDay.value = _controller.selectedDate?.day.toString() ?? "";

        ///
        DateTime parsedDate = DateFormat("dd/MM/yyyy")
            .parse("${dropDay.value}/${dropMonth.value}/${dropYear.value}");

        final DateFormat monthYearFormats = DateFormat("MMM, yyyy");
        final DateFormat monthDayYearFormats = DateFormat("MMMM, dd yyyy");

        dropMonthYear.value = monthYearFormats.format(parsedDate);
        dropMonthDayYear.value = monthDayYearFormats.format(parsedDate);
      });
    });

    if (isSelected) {
      return Column(
        children: [
          SizedBox(height: 2.w),
          SizedBox(
            child: Text(
              DateFormat('EEE').format((details.date)),
              style: const TextStyle(
                  color: AppColor.calendar,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ),
          SizedBox(height: 2.w),
          SizedBox(
            child: Text(
              details.date.day.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: AppColor.calendar,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
          SizedBox(height: 2.w),
          const CircleAvatar(
            radius: 4,
            backgroundColor: AppColor.calendar,
          )
        ],
      );
    } else {
      return Column(
        children: [
          SizedBox(height: 2.w),
          SizedBox(
            child: Text(
              DateFormat('EEE').format((details.date)),
              style: const TextStyle(
                  color: AppColor.day,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
          ),
          SizedBox(height: 2.w),
          SizedBox(
            child: Text(
              details.date.day.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: AppColor.textColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
          ),
          SizedBox(height: 2.w),
        ],
      );
    }
  }
}
