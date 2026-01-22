import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/profile_provider.dart';

class ProfileTab extends ConsumerStatefulWidget {
  const ProfileTab({super.key});

  @override
  ConsumerState<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends ConsumerState<ProfileTab>
    with AutomaticKeepAliveClientMixin {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final name = ref.watch(profileNameProvider);

    return Navigator(
      key: _navigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: const Text('我的')),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('用户名: $name', style: const TextStyle(fontSize: 24)),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => _changeName(),
                    child: const Text('修改用户名'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => _navigatorKey.currentState?.push(
                      MaterialPageRoute(
                        builder: (_) => const ProfileDetailPage(),
                      ),
                    ),
                    child: const Text('跳转个人详情'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _changeName() {
    final newName = '用户${DateTime.now().second}';
    ref.read(profileNameProvider.notifier).state = newName;
  }

  @override
  bool get wantKeepAlive => true;
}

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('个人详情页')),
      body: const Center(child: Text('这是 Profile 详情页面')),
    );
  }
}
