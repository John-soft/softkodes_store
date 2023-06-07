import 'package:flutter/material.dart';
import 'package:softkodes_store/styles/colors.dart';

class DesktopBody extends StatelessWidget {
  DesktopBody({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height * 0.200,
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
                    height: height * 0.08,
                    width: width * 0.40,
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
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    6,
                    (index) => Container(
                      height: height * 0.08,
                      width: width * 0.15,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        //color: Colors.red,
                      ),
                      child: const Center(
                        child: Text(
                          'Converse Shoes',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: height * 0.15,
                          width: width * 0.96,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/images/circle.png'),
                              const Text(
                                'Addida Sport Wear',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/images/adidasIcon.png'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset('assets/images/adidasIcon.png'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset('assets/images/adidasIcon.png'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset('assets/images/adidasIcon.png'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset('assets/images/adidasIcon.png'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Stack(
                                    children: [
                                      Image.asset(
                                          'assets/images/adidasIcon.png'),
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(
                                            0.8,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(
                                              12,
                                            ),
                                          ),
                                        ),
                                        child: const Center(
                                            child: Text(
                                          '10+',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        )),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: GridView.count(
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.symmetric(
                                vertical: 40, horizontal: 20),
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            crossAxisCount: 4,
                            children: List.generate(
                              8,
                              (index) => index == 2
                                  ? Card(
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            12,
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                            child: Image.asset(
                                                'assets/images/shoe.png'),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
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
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text(
                                              '\$1200',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Center(
                                            child: Container(
                                              height: 40,
                                              width: width * 0.09,
                                              decoration: const BoxDecoration(
                                                color: AppColors.appBarColor,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                    10,
                                                  ),
                                                ),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  'Add to cart',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Card(
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            12,
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                            child: Image.asset(
                                                'assets/images/shoe.png'),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
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
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
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
                      ],
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
