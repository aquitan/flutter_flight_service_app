import 'package:flutter/material.dart';
import 'package:gethigh/ui/ui.dart';

class HotTicketPreview extends StatelessWidget {
  const HotTicketPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BaseContainer(
      onPressed: () => print('card'),
      width: 300,
      height: 550,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Wrap(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price: 9000\$',
                    style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const Icon(Icons.airplane_ticket)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Seatle, WA',
                  style: theme.textTheme.bodyLarge,),
              ),
              Row(
                children: [
                  Text(
                    'Departure:',
                    style: theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '13:30',
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ]
          )
        ],
      )
    );
  }
}