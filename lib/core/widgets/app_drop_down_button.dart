import 'package:a7gzle/features/Home/home_screen/owner/data/model/drop_down_button_value_model.dart';
import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors_manager.dart';
import '../theming/text_styles.dart';

class AppCityDropDownFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final List<SelectedListItem<DropDownbuttonvalueModel>> datalist;
  final Function(String)? onSelected;
  final String hint;

  const AppCityDropDownFormField({
    super.key,
    required this.label,
    required this.controller,
    required this.datalist,
    this.onSelected,
    this.hint = 'Choose your city',
  });

  void _openCityBottomSheet(BuildContext context) {
    DropDownState<DropDownbuttonvalueModel>(
      dropDown: DropDown<DropDownbuttonvalueModel>(
        data: datalist,
        enableMultipleSelection: false,
        isDismissible: true,
        bottomSheetTitle: Text(
          label,
          style: TextStyles.font16labelblackmideum.copyWith(fontSize: 20),
        ),
        submitButtonText: 'Save',
        clearButtonText: 'Clear',
        onSelected: (selectedItems) {
          if (selectedItems.isNotEmpty) {
            controller.text = selectedItems.first.data.value;
            onSelected?.call(selectedItems.first.data.value);
          }
        },
      ),
    ).showModal(context);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "this feild van't be empty";
        }
      },
      controller: controller,
      readOnly: true,
      onTap: () => _openCityBottomSheet(context),
      style: TextStyles.font16graymiduem,
      decoration: InputDecoration(
        label: Padding(
          padding: EdgeInsets.only(right: 15.w, left: 6.w),
          child: Text(label),
        ),
        labelStyle: TextStyles.font16labelblackmideum,
        floatingLabelStyle: TextStyles.font16labelblackmideum.copyWith(
          fontSize: 20,
          color: ColorsManager.mainBlue,
        ),
        filled: true,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1),
          borderRadius: BorderRadius.circular(30),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1),
          borderRadius: BorderRadius.circular(30),
        ),
        fillColor:ColorsManager.offwhite(context),
        hintText: hint,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.gray, width: 1.5),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.5),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
