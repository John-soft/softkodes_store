import 'package:flutter/material.dart';
import 'package:softkodes_store/styles/colors.dart';

class MobileBody extends StatelessWidget {
  MobileBody({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.appBarColor,
            ),
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 100,
                    left: 20,
                    right: 20,
                  ),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 0.5,
                          blurRadius: 5,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: searchController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search for a product',
                          suffixIcon: Icon(Icons.keyboard_arrow_down),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'My Products',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    child: GridView.count(
                      physics: const BouncingScrollPhysics(),
                      controller: ScrollController(),
                      padding: const EdgeInsets.symmetric(
                          vertical: 40, horizontal: 20),
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      children: List.generate(
                        4,
                        (index) => Card(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                12,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      12,
                                    ),
                                  ),
                                ),
                                child: Image.asset('assets/images/shoe.png'),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'Adidas Converse',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  '\$1200',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
