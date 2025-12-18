import 'package:a7gzle/core/helpers/shared_pref_helper.dart';
import 'package:a7gzle/core/theming/text_styles.dart';
import 'package:a7gzle/features/Home/settings/data/cubit/logout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BuildListTilesWidget extends StatelessWidget {
  const BuildListTilesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: SvgPicture.asset("assets/svgs/settings/booking.svg"),
            title: Text("My Booking", style: TextStyles.font18blackbold),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/svgs/settings/booking.svg"),
            title: Text("Payments", style: TextStyles.font18blackbold),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w),
            child: Divider(
              thickness: 1,
              color: const Color.fromARGB(73, 102, 104, 118),
            ),
          ),

          ListTile(
            leading: SvgPicture.asset("assets/svgs/settings/profile.svg"),
            title: Text("Profile", style: TextStyles.font18blackbold),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/svgs/settings/notification.svg"),
            title: Text("Notification", style: TextStyles.font18blackbold),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/svgs/settings/security.svg"),
            title: Text("Security", style: TextStyles.font18blackbold),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/svgs/settings/language.svg"),
            title: Text("Language", style: TextStyles.font18blackbold),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: SvgPicture.asset("assets/svgs/settings/helpcenter.svg"),
            title: Text("Help Center", style: TextStyles.font18blackbold),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          InkWell(
            onTap: () {
              context.read<LogoutCubit>().emitLogoutState();
              SharedPrefHelper.clearAllSecuredData();
            },
            child: ListTile(
              leading: SvgPicture.asset("assets/svgs/settings/logout.svg"),
              title: Text(
                "Logout",
                style: TextStyles.font18blackbold.copyWith(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
