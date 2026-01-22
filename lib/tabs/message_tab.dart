import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/message_provider.dart';

class MessageTab extends ConsumerStatefulWidget {
  const MessageTab({super.key});

  @override
  ConsumerState<MessageTab> createState() => _MessageTabState();
}

class _MessageTabState extends ConsumerState<MessageTab>
    with AutomaticKeepAliveClientMixin {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final count = ref.watch(messageCountProvider);

    return Navigator(
      key: _navigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(title: const Text('消息')),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('消息计数: $count', style: const TextStyle(fontSize: 24)),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () =>
                        ref.read(messageCountProvider.notifier).state++,
                    child: const Text('增加消息计数'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => _navigatorKey.currentState?.push(
                      MaterialPageRoute(
                        builder: (_) => const MessageDetailPage(),
                      ),
                    ),
                    child: const Text('跳转消息详情'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class MessageDetailPage extends StatelessWidget {
  const MessageDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('消息详情页')),
      body: const Center(child: Text('这是 Message 详情页面')),
    );
  }
}
