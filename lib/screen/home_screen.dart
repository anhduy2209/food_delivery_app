import 'package:flutter/material.dart';
import 'package:food_delivery/screen/detail_screen.dart';
import 'package:food_delivery/widget/widget_support.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool icecream = false, pizza = false, salad = false, burger = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          top: 50.0,
          left: 15.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Home Screen',
                  style: AppWidget.boldTextStyle(),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Text(
              'Delicious Food',
              style: AppWidget.headTextStyle(),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Discover and get great food!',
              style: AppWidget.lightTextStyle(),
            ),
            const SizedBox(height: 20.0),
            Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: showItems(),
            ),
            const SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailScreen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(4.0),
                      child: Material(
                        elevation: 10.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset(
                                'images/pizza1.png',
                                height: 150.0,
                                width: 150.0,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                // 'Pepperoni and Pepperoni Pizza',
                                'Pepperoni Pizza',
                                style: AppWidget.semiTextStyle(),
                              ),
                              const SizedBox(height: 5.0),
                              Text(
                                'PIZZA',
                                style: AppWidget.lightTextStyle(),
                              ),
                              const SizedBox(height: 5.0),
                              Text(
                                '\$25',
                                style: AppWidget.semiTextStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    margin: const EdgeInsets.all(4.0),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'images/pizza1.png',
                              height: 150.0,
                              width: 150.0,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              // 'Pepperoni and Pepperoni Pizza',
                              'Pepperoni Pizza',
                              style: AppWidget.semiTextStyle(),
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                              'PIZZA',
                              style: AppWidget.lightTextStyle(),
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                              '\$25',
                              style: AppWidget.semiTextStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    margin: const EdgeInsets.all(4.0),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'images/pizza1.png',
                              height: 150.0,
                              width: 150.0,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              // 'Pepperoni and Pepperoni Pizza',
                              'Pepperoni Pizza',
                              style: AppWidget.semiTextStyle(),
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                              'PIZZA',
                              style: AppWidget.lightTextStyle(),
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                              '\$25',
                              style: AppWidget.semiTextStyle(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                ],
              ),
            ),
            const SizedBox(height: 25.0),
            Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/pizza2.png',
                        height: 120.0,
                        width: 120.0,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 20.0),
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              'Cheese Pizza',
                              style: AppWidget.semiTextStyle(),
                            ),
                          ),
                          const SizedBox(height: 6.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text('Served with honey',
                                style: AppWidget.lightTextStyle()),
                          ),
                          const SizedBox(height: 6.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child:
                                Text('\$20', style: AppWidget.semiTextStyle()),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = true;
            pizza = false;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: icecream ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'images/ice-cream.png',
                height: 45.0,
                width: 45.0,
                fit: BoxFit.cover,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = true;
            salad = false;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: pizza ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'images/pizza.png',
                height: 45.0,
                width: 45.0,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = true;
            burger = false;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: salad ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'images/salad.png',
                height: 45.0,
                width: 45.0,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = false;
            burger = true;
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: burger ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'images/burger.png',
                height: 45.0,
                width: 45.0,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
