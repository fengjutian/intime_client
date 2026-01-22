import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/home_provider.dart'; // 引入 homeCountProvider

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须调用

    // 监听计数状态
    final count = ref.watch(homeCountProvider);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('计数：$count', style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // 使用 Riverpod 更新状态
              ref.read(homeCountProvider.notifier).state++;
            },
            child: const Text('增加'),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true; // 保持状态
}
