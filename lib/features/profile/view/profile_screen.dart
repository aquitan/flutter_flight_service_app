import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gethigh/features/profile/widgets/widgets.dart';
import 'package:gethigh/ui/ui.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('Profile'),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16,)),
          SliverToBoxAdapter(
            child: BaseContainer(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 130,
              width: double.infinity,
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Text(
                    'Enter to your Account',
                    style: theme.textTheme.titleMedium?.copyWith(fontSize: 24),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(theme.primaryColor),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)))),
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
            height: 16,
          )),

          SliverToBoxAdapter(
            child: ProfileToggleCard(
                title: 'Allow Notifications',
                value: false,
                onChanged: (value) {}),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
            height: 8,
          )),
          SliverToBoxAdapter(
            child: ProfileToggleCard(
                title: 'Dark theme',
                value: false,
                onChanged: (value) {}
              ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
            height: 8,
          )),
          SliverToBoxAdapter(
            child: ProfileToggleCard(
            title: 'Collect statistics', value: false, onChanged: (value) {}),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
            height: 16,
          )),
          SliverToBoxAdapter(
            child: ProfileActionCard(
              title: 'Questions? Contact Help',
              onTap: () {},
              icon: Icons.headphones_outlined,
            ),
          ),
        ],

      ),
    );
  }
}

class ProfileActionCard extends StatelessWidget {
  const ProfileActionCard({
    super.key, required this.title, this.onTap, required this.icon,
  });

  final String title;
  final VoidCallback? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: BaseContainer(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: theme.textTheme.bodyMedium),
            Icon(icon, color: theme.primaryColor),
          ],
        )),
    );
  }
}

