import 'package:flutter/material.dart';
import 'package:gethigh/ui/ui.dart';

class SearchFlightBottomSheet extends StatelessWidget {
  const SearchFlightBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseBottomSheet(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                            color: theme.hintColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12)),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Departure',
                            hintStyle: TextStyle(fontSize: 16),
                            contentPadding: EdgeInsets.symmetric(horizontal: 12),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        )
                      ),
                      SizedBox(
                        height: 20,
                        child: Icon(Icons.swap_vert, color: theme.hintColor.withOpacity(.3),),),
                      Container(
                        height: 45,
                        decoration: BoxDecoration(
                            color: theme.hintColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12)),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Destination',
                            hintStyle: TextStyle(fontSize: 16),
                            contentPadding: EdgeInsets.symmetric(horizontal: 12),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        )
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: theme.primaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Icon(
                          Icons.search,
                          color: theme.canvasColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
              ),
            ),
          Divider(height: 8, color: theme.primaryColor,),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                title: const Text('Example'),
                onTap: () {},
              ),
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
