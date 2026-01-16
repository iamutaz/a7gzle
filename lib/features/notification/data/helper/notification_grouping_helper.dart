import 'package:a7gzle/features/notification/data/model/notification_section.dart';
import 'package:a7gzle/features/notification/data/model/owner_reservation_response_body.dart';
import 'package:easy_localization/easy_localization.dart';

Map<NotificationSection, List<OwnerReservationBody>> groupReservationByDate(
  List<OwnerReservationBody> list,
) {
  final now = DateTime.now();
  final Map<NotificationSection, List<OwnerReservationBody>> grouped = {
    NotificationSection.today: [],
    NotificationSection.yesterday: [],
    NotificationSection.older: [],
  };
  for (final item in list) {
    final createdAt = DateTime.parse(item.creatdeat);
    final createdDateOnly = DateTime(
      createdAt.year,
      createdAt.month,
      createdAt.day,
    );
    final nowDateOnly = DateTime(now.year, now.month, now.day);
    final diffrence = nowDateOnly.difference(createdDateOnly).inDays;

    if (diffrence == 0) {
      grouped[NotificationSection.today]!.add(item);
    } else if (diffrence == 1) {
      grouped[NotificationSection.yesterday]!.add(item);
    } else {
      grouped[NotificationSection.older]!.add(item);
    }
  }
  return grouped;
}

String getNotificationStatusIcon(String status) {
  switch (status) {
    case "confirmed" || "finished":
      return "assets/svgs/notification/reservation_done.svg";
    case "rejected" || "cancelled":
      return "assets/svgs/notification/reservation_canceleed.svg";
    default:
      return "assets/svgs/notification/new_reservation.svg";
  }
}

String formatNotificationTime(String createdAt) {
  final date = DateTime.parse(createdAt);
  final now = DateTime.now();

  final difference = now.difference(date);

  if (difference.inMinutes < 60) {
    return "${difference.inMinutes}m";
  } else if (difference.inHours < 24) {
    return "${difference.inHours}h";
  } else if (difference.inDays == 1) {
    return "Yesterday";
  } else {
    return "${difference.inDays}d";
  }
}

String getNotificationTitle(String status) {
  switch (status) {
    case "confirmed" || "finished":
      return "Appointment Success ".tr();
    case "rejected":
      return "Appointment Rejected".tr();
    case "cancelled":
      return "Appointment Cancelled".tr();
    case "pending":
      return "New Appointment Added!".tr();
    default:
      return "New Notifiaction!!".tr();
  }
}

String getNotificationdescription(
  String status,
  String tenantName,
  String startDate,
  String endDate,
  String apartmentName,
) {
  switch (status) {
    case "confirmed":
      return "desc_confirmed".tr(
        args: [tenantName, startDate, endDate, apartmentName],
      );
    case "cancelled":
      return "desc_cancelled".tr(args: [tenantName,apartmentName]);
    case "pending":
      return "desc_pending".tr(args: [apartmentName,tenantName,startDate,endDate]);
    case "rejected":
      return "desc_rejected".tr(args: [tenantName]);
    case "finished":
      return "desc_finished".tr(args: [apartmentName]);

    default:
      return "New Notifiaction!!".tr();
  }
}
