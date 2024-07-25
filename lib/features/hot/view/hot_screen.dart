import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gethigh/features/hot/widgets/hot_ticket.dart';

@RoutePage()
class HotScreen extends StatelessWidget {
  const HotScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            snap: true,
            floating: true,
            backgroundColor: Colors.white,
            title: Text('Hot Tickets'),
            elevation: 0,
            surfaceTintColor: Colors.transparent,
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
            height: 16,
          )),
          SliverList.builder(
            itemCount: 1,
            itemBuilder: (context, index) => const HotTicket()
          )
        ],
      ),
    );
  }
}
