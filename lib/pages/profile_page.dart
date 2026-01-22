import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/profile_provider.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须调用
    final name = ref.watch(profileNameProvider);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('用户名：$name', style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final newName = '用户${DateTime.now().second}';
              ref.read(profileNameProvider.notifier).state = newName;
            },
            child: const Text('修改用户名'),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
