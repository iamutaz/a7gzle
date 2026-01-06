import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/core/widgets/app_search_card.dart' show AppSearchCard;
import 'package:a7gzle/core/widgets/searched_apartment_card_model.dart';
import 'package:a7gzle/features/reservations/data/logic/cancel_reservation/cancel_reservation_cubit.dart';
import 'package:a7gzle/features/reservations/data/logic/update_reservation/update_reservation_cubit.dart';
import 'package:a7gzle/features/reservations/data/model/cancel/cancel_reservation_request_body.dart';
import 'package:a7gzle/features/reservations/data/model/user_reservations_response_body.dart';
import 'package:a7gzle/features/reservations/widgets/update_reservation_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildrReservationTypeList extends StatelessWidget {
  final List<ReservationBody> reservationBody;
  bool? ispending;
  BuildrReservationTypeList({
    super.key,
    required this.reservationBody,
    this.ispending,
  });
  void _openupdating(BuildContext context, int reservationid) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => BlocProvider(
        create: (context) => getIt<UpdateReservationCubit>(),
        child: UpdateReservationSheet(reservationid: reservationid),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        SearchedApartmentCardModel searchedApartmentCardModel =
            SearchedApartmentCardModel(
              apartmentname: reservationBody[index].apartmentDetails.title,
              city: reservationBody[index].apartmentDetails.city,
              imagepath: reservationBody[index].apartmentDetails.firstiamgepath,
              price: reservationBody[index].apartmentDetails.price,
            );

        return AppSearchCard(
          oncancelTap: () {
            CancelReservationRequestBody cancelReservationRequestBody =
                CancelReservationRequestBody(
                  reservationid: reservationBody[index].reservationid,
                );
            context.read<CancelReservationCubit>().emitcancelreservation(
              cancelReservationRequestBody,
            );
          },
          oneditTap: () {
            _openupdating(context, reservationBody[index].reservationid);
          },
          ispending: ispending,
          searchedApartmentCardModel: searchedApartmentCardModel,
        );
      }, childCount: reservationBody.length),
    );
  }
}
