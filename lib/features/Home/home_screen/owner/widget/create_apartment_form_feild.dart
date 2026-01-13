// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/core/widgets/app_drop_down_button.dart';
import 'package:a7gzle/core/widgets/app_text_button.dart';
import 'package:a7gzle/core/widgets/app_text_form_feild.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/cubit/create_apartment_cubit.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/model/create_apartment_request_body.dart';
import 'package:a7gzle/features/Home/home_screen/owner/data/model/drop_down_button_value_model.dart';
import 'package:a7gzle/features/Home/home_screen/tenant/data/cubit/allapartment_cubit.dart';
import 'package:dio/dio.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class CreateApartmentFormFeild extends StatefulWidget {
  const CreateApartmentFormFeild({super.key});

  @override
  State<CreateApartmentFormFeild> createState() =>
      _CreateApartmentFormFeildState();
}

class _CreateApartmentFormFeildState extends State<CreateApartmentFormFeild> {
  List<File> _apartmentImages = [];
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickMultipleImages() async {
    final List<XFile> pickedFiles = await _picker.pickMultiImage();

    if (pickedFiles.isNotEmpty) {
      setState(() {
        _apartmentImages.addAll(pickedFiles.map((e) => File(e.path)));
      });
    }
  }

  ///change the type of images to multipart
  Future<List<MultipartFile>> _prepareImages() async {
    return Future.wait(
      _apartmentImages.map(
        (image) => MultipartFile.fromFile(
          image.path,
          filename: image.path.split('/').last,
        ),
      ),
    );
  }

  final List<SelectedListItem<DropDownbuttonvalueModel>> estatetype = [
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: "apartment".tr(), value: "apartment"),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: "house".tr(), value: "house"),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: "villa".tr(), value: "villa"),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: "other".tr(), value: "otherwise"),
    ),
  ];

  final List<SelectedListItem<DropDownbuttonvalueModel>> cities = [
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Damascus'.tr(), value: 'damascus'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Aleppo'.tr(), value: 'aleppo'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Homs'.tr(), value: 'homs'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Hama'.tr(), value: 'hama'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Latakia'.tr(), value: 'latakia'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Tartus'.tr(), value: 'tartus'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Idlib'.tr(), value: 'idlib'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(
        label: 'Rif Dimashq'.tr(),
        value: 'rif_dimashq',
      ),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(
        label: 'Deir Ez Zor'.tr(),
        value: 'deir_ez_zor',
      ),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Daraa'.tr(), value: 'daraa'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'As Suwayda'.tr(), value: 'as_suwayda'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Quneitra'.tr(), value: 'quneitra'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Raqqa'.tr(), value: 'raqqa'),
    ),
    SelectedListItem(
      data: DropDownbuttonvalueModel(label: 'Al Hasakah'.tr(), value: 'al_hasakah'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<CreateApartmentCubit>().formkey,
      child: Column(
        children: [
          AppTextFormFeild(
            feildname: "apartment name".tr(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "this feild can't be empty".tr();
              }
            },
            controller: context
                .read<CreateApartmentCubit>()
                .apartmentnamecontroller,
          ),
          SizedBox(height: 25.h),
          AppTextFormFeild(
            feildname: "description".tr(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "this feild can't be empty".tr();
              }
            },
            controller: context
                .read<CreateApartmentCubit>()
                .descriptioncontroller,
          ),
          SizedBox(height: 25.h),
          AppTextFormFeild(
            feildname: "price".tr(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "this feild can't be empty".tr();
              }
            },
            controller: context.read<CreateApartmentCubit>().pricecontroller,
          ),
          SizedBox(height: 25.h),
          AppTextFormFeild(
            feildname: "bathrooms".tr(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "this feild can't be empty".tr();
              }
              if (int.tryParse(value) == null) {
                return "this field must be a number only".tr();
              }
            },
            controller: context
                .read<CreateApartmentCubit>()
                .bathroomscontroller,
          ),
          SizedBox(height: 25.h),
          AppTextFormFeild(
            feildname: "rooms".tr(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "this feild can't be empty".tr();
              }
              if (int.tryParse(value) == null) {
                return "this field must be a number only".tr();
              }
            },
            controller: context.read<CreateApartmentCubit>().roomscontroller,
          ),
          SizedBox(height: 25.h),
          AppTextFormFeild(
            feildname: "area".tr(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "this feild can't be empty".tr();
              }
            },
            controller: context.read<CreateApartmentCubit>().areacontroller,
          ),
          SizedBox(height: 25.h),

          AppCityDropDownFormField(
            label: 'City'.tr(),
            controller: context.read<CreateApartmentCubit>().citycontroller,
            datalist: cities,
            onSelected: (city) {
              debugPrint('Selected city: $city');
            },
          ),
          SizedBox(height: 20.h),
          AppCityDropDownFormField(
            label: 'types'.tr(),
            controller: context.read<CreateApartmentCubit>().typecontroller,
            datalist: estatetype,
            onSelected: (city) {
              debugPrint('Selected city: $city');
            },
          ),
          SizedBox(height: 50.h),

          _buildImagesGrid(),
          SizedBox(height: 25.h),
          AppTextButton(
            onpressed: () async {
              if (!context
                  .read<CreateApartmentCubit>()
                  .formkey
                  .currentState!
                  .validate()) {
                return;
              }
              if (_apartmentImages.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Please add at least one image".tr()),
                    backgroundColor: Colors.red,
                  ),
                );
                return;
              }
              final images = await _prepareImages();

              context.read<CreateApartmentCubit>().emitcreateapartment(
                CreateApartmentRequestBody(
                  type: context
                      .read<CreateApartmentCubit>()
                      .typecontroller
                      .text,
                  title: context
                      .read<CreateApartmentCubit>()
                      .apartmentnamecontroller
                      .text,
                  area: int.parse(
                    context.read<CreateApartmentCubit>().areacontroller.text,
                  ),
                  bathrooms: int.parse(
                    context
                        .read<CreateApartmentCubit>()
                        .bathroomscontroller
                        .text,
                  ),
                  city: context
                      .read<CreateApartmentCubit>()
                      .citycontroller
                      .text,
                  description: context
                      .read<CreateApartmentCubit>()
                      .descriptioncontroller
                      .text,
                  images: images,
                  price: context
                      .read<CreateApartmentCubit>()
                      .pricecontroller
                      .text,
                  rooms: int.parse(
                    context.read<CreateApartmentCubit>().roomscontroller.text,
                  ),
                ),
              );
            },
            textButton: "Create".tr(),
            textStyle: TextStyles.font16whitesemibold,
          ),
        ],
      ),
    );
  }

  Widget _buildImagesGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _apartmentImages.length + 1,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        if (index == _apartmentImages.length) {
          return InkWell(
            onTap: _pickMultipleImages,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.add),
            ),
          );
        }

        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.file(
                _apartmentImages[index],
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Positioned(
              top: 4,
              right: 4,
              child: InkWell(
                onTap: () {
                  setState(() {
                    _apartmentImages.removeAt(index);
                  });
                },
                child: const CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.close, size: 14, color: Colors.white),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
