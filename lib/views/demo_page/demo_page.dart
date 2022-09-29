import 'package:eat_incredible_app/controller/iteam_bloc/itemsdemo_bloc.dart';
import 'package:eat_incredible_app/utils/barrel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Page'),
      ),
      body: BlocConsumer<ItemsdemoBloc, ItemsdemoState>(
        bloc: BlocProvider.of<ItemsdemoBloc>(context),
        listener: (context, state) {},
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[ 
                Text(
                  'You have pushed the button this many times:',
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context
              .read<ItemsdemoBloc>()
              .add(const ItemsdemoEvent.getItemsData(cardId: '13'));
          // var orgdetails = await LoginRepo().listItemsDemo();
          // orgdetails.when(
          //   success: (result) {
          //     log(result['data'][0]['email'].toString());
          //   },
          //   failure: (error) {
          //     log(error.toString());
          //   },
          // );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
