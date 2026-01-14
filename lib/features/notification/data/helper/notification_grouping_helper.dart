import 'package:a7gzle/features/notification/data/model/notification_section.dart';
import 'package:a7gzle/features/notification/data/model/owner_reservation_response_body.dart';

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
      return "Appointment Success ";
    case "rejected":
      return "Appointment Rejected";
    case "cancelled":
      return "Appointment Cancelled";
    case "pending":
      return "New Appointment Added!";
    default:
      return "New Notifiaction!!";
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
      return "Congratulations - your appointment is confirmed with $tenantName ! the Reservation start from $startDate to $endDate , $apartmentName apartment..";
    case "cancelled":
      return "$tenantName just cancelled $apartmentName Reservation ";
    case "pending":
      return "Your apartment $apartmentName has been successfully booked by $tenantName from $startDate to $endDate.";
    case "rejected":
      return "you've just rejected $tenantName reservation ";
    case "finished":
      return "$apartmentName reservation is finish";

    default:
      return "New Notifiaction!!";
  }
}
