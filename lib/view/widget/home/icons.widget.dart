import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/view/widget/general/button.widget.dart';
import 'package:ecommerce/view/widget/home/alertDialog.dart';
import 'package:ecommerce/view/widget/home/categoryList.widget.dart';
import 'package:ecommerce/view/widget/home/flagList.widget.dart';
import 'package:flutter/material.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';

class icons extends StatelessWidget {
  const icons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () async {
                  DateTime selectedDate = DateTime.now();
                  TimeOfDay selectedTime = TimeOfDay.now();
                  List<DateTime> dates = [selectedDate];
                  await showCalendarDatePicker2Dialog(
                      context: context,
                      config: CalendarDatePicker2WithActionButtonsConfig(
                          calendarType: CalendarDatePicker2Type.single,
                          centerAlignModePickerButton: true,
                          //  disableYearPicker: true,
                          weekdayLabels: [
                            "SUN",
                            "MON",
                            "TUE",
                            "WED",
                            "THU",
                            "FRI",
                            "SAT"
                          ],
                          lastMonthIcon: Icon(
                            Icons.navigate_before_outlined,
                            color: app_colors.text,
                          ),
                          nextMonthIcon: Icon(
                            Icons.navigate_next_rounded,
                            color: app_colors.text,
                          ),
                          controlsTextStyle: TextStyle(color: app_colors.text),
                          weekdayLabelTextStyle:
                              TextStyle(color: app_colors.secondText),
                          selectedDayHighlightColor: app_colors.button,
                          dayTextStyle: TextStyle(
                            color: app_colors.text,
                          ),
                          selectedYearTextStyle: TextStyle(
                            color: app_colors.button,
                          ),
                          okButton: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).push(
                                showPicker(
                                    value: Time(hour: 5, minute: 30),
                                    onChange: (p0) {},
                                    accentColor: app_colors.button,
                                    themeData: ThemeData.dark(),
                                    okStyle: TextStyle(
                                        color: app_colors.button, fontSize: 18),
                                    cancelStyle: TextStyle(
                                      color: app_colors.secondColors,
                                    )),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: app_colors.button,
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Text(
                                "Choose Time",
                                style: TextStyle(color: app_colors.text),
                              ),
                            ),
                          ),
                          closeDialogOnOkTapped: false,
                          yearTextStyle: TextStyle(color: app_colors.text),
                          disabledDayTextStyle:
                              TextStyle(color: app_colors.text)),
                      dialogSize: const Size(325, 450),
                      initialValue: dates,
                      borderRadius: BorderRadius.circular(15),
                      dialogBackgroundColor: app_colors.thirdColors);
                },
                icon: Icon(
                  Icons.timer_outlined,
                  color: app_colors.text,
                )),
            categoryList(),
            flagList(),
          ],
        ),
        IconButton(
            onPressed: () => null,
            icon: Icon(
              Icons.send_rounded,
              color: app_colors.button,
            ))
      ],
    );
  }
}
