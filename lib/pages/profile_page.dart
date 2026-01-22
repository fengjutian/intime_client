class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    super.build(context); // 必须
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('计数：$count'),
          ElevatedButton(
            onPressed: () => setState(() => count++),
            child: const Text('增加'),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
