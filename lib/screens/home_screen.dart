import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:store_api_flutter_course/consts/global_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _textEditingController;
  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // Dispose of the TextEditingController to free up resources
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Mtalii Wardrobe'),
            elevation: 4,
            leading: IconButton(
              icon: const Icon(IconlyBold.category),
              tooltip: 'Tap for menu',
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(IconlyBold.user3),
                tooltip: 'Tap for profile',
                onPressed: () {},
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                TextField(
                    controller: _textEditingController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Search",
                        filled: true,
                        fillColor: Theme.of(context).cardColor,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: Theme.of(context).cardColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                width: 1,
                                color:
                                    Theme.of(context).colorScheme.secondary
                            )),
                          suffixIcon: Icon(
                            IconlyLight.search,
                            color: lightIconsColor,
                          )
                        )
                )
              ],
            ),
          )),
    );
  }
}
