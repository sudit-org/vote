import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vote/models/poll.dart';
import 'package:vote/view_models/home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    List<Poll> pools = context.watch<HomeViewModel>().toVotePolls;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: const Text("تصويت"),
      ),
      body: ListView.builder(
          itemCount: pools.length,
          itemBuilder: (BuildContext context, int index) {
            Poll pool = pools[index];
            return Container(
              decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          pools[index].title,
                        ),
                        Text(
                          pools[index].createdAt,
                        ),
                      ]),
                  const SizedBox(
                    height: 19,
                  ),
                  Image.network(pool.image),
                  Text(
                    pool.title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FilledButton(
                        onPressed: () => {},
                        style: ButtonStyle(backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                          return Colors.green;
                          // if (states.contains(MaterialState.pressed)) {
                          //   return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                          // }
                          // return null; // Use the component's default.
                        })),
                        child: const Text("اوافق"),
                      ),
                      FilledButton(
                        onPressed: () => {},
                        style: ButtonStyle(backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                          return Colors.red;
                          // if (states.contains(MaterialState.pressed)) {
                          //   return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                          // }
                          // return null; // Use the component's default.
                        })),
                        child: const Text("ارفض"),
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "للتصويت"),
          BottomNavigationBarItem(icon: Icon(Icons.history_edu), label: "سجل")
        ],
      ),
    );
  }
}
