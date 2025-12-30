import 'package:a7gzle/core/widgets/app_search_card.dart' show AppSearchCard;
import 'package:a7gzle/core/widgets/searched_apartment_card_model.dart';
import 'package:a7gzle/features/reservations/data/model/user_reservations_response_body.dart';
import 'package:flutter/material.dart';

class BuildPendingList extends StatelessWidget {
  final List<ReservationBody> reservationBody;
  const BuildPendingList({super.key, required this.reservationBody});

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
          searchedApartmentCardModel: searchedApartmentCardModel,
        );
      }, childCount: reservationBody.length),
    );
  }
}
