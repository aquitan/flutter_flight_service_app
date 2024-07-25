import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gethigh/features/home/widgets/widgets.dart';
import 'package:gethigh/features/hot/widgets/hot_ticket_preview.dart';
import 'package:gethigh/features/search/search.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
            title: const Text(
              'Lets Fly?',
            ),
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
            pinned: true,
            floating: true,
            snap: true,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(70),
                child: SearchButton(
                  onTap: () => _showSearchBottomSheet(context),
                )
              )
            ),
        const SliverToBoxAdapter(
          child: SizedBox(
          height: 16,
        )),
        SliverToBoxAdapter(
          child: SizedBox(
          height: 120,
          child: ListView.separated(
              padding: const EdgeInsets.only(left: 16),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemBuilder: (context, index) => const HotTicketPreview()),
        )),
        const SliverToBoxAdapter(
          child: SizedBox(
          height: 16,
        )),
        SliverList.builder(
          itemCount: 5,
          itemBuilder: (context, item) => const SugestedDirection()),
      ],
    );
  }

  void _showSearchBottomSheet(BuildContext context ) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      elevation: 0,
      builder: (context) => const SearchFlightBottomSheet()
    );
  }
}


