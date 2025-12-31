import 'package:a7gzle/core/DI/get_it.dart';
import 'package:a7gzle/core/widgets/app_search_card.dart' show AppSearchCard;
import 'package:a7gzle/core/widgets/searched_apartment_card_model.dart';
import 'package:a7gzle/features/reservations/data/logic/cancel_reservation/cancel_reservation_cubit.dart';
import 'package:a7gzle/features/reservations/data/logic/cancel_reservation/cancel_reservation_cubit.dart';
import 'package:a7gzle/features/reservations/data/model/cancel_reservation_request_body.dart';
import 'package:a7gzle/features/reservations/data/model/user_reservations_response_body.dart';
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
          ispending: ispending,
          searchedApartmentCardModel: searchedApartmentCardModel,
        );
      }, childCount: reservationBody.length),
    );
  }
}
