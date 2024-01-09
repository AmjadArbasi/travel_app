// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:logger/logger.dart';
import 'package:travel_app/models/city_model.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    List<CityModel> cities = CityModel.cities;
    return Scaffold(
      appBar: const _CustonAppBar(),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _CustomTitleText(),
            _CustomSearchField(),
            _CustonTagBar(),
            _CityMasonryGrid(cities: cities),
          ],
        ),
      ),
      bottomNavigationBar: _CustomBottomBar(),
    );
  }
}

class _CustomBottomBar extends StatelessWidget {
  const _CustomBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            size: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 30,
          ),
          label: '',
        ),
      ],
    );
  }
}

class _CityMasonryGrid extends StatelessWidget {
  const _CityMasonryGrid({
    required this.cities,
  });

  final List<CityModel> cities;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MasonryGridView.count(
        crossAxisCount: 2,
        itemCount: cities.length,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              InkWell(
                onTap: () {
                  Get.toNamed("/city", arguments: cities[index]);
                },
                child: Container(
                  height: (index % 4 + 2) * 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(cities[index].urlImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 10,
                child: Text(
                  cities[index].cityName,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.4,
                      ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _CustomTitleText extends StatelessWidget {
  const _CustomTitleText();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        "Discover\nNew Your with us!",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _CustomSearchField extends StatelessWidget {
  const _CustomSearchField();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.grey[200],
          filled: true,
          suffixIcon: Icon(
            Icons.search,
            size: 35,
          ),
          hintText: "Search",
          contentPadding: EdgeInsets.all(15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class _CustonTagBar extends StatelessWidget {
  const _CustonTagBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "All",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "New",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Most View",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Recommended",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class _CustonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustonAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          SizedBox(
            child: Text(
              'Home',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.black),
            ),
          ),
          const Spacer(),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
