// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/Utilities/my_button.dart';
import 'package:wallet_app/Utilities/my_card.dart';
import 'package:wallet_app/Utilities/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: Icon(Icons.monetization_on_rounded),
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
              iconSize: 32,
              color: const Color.fromARGB(255, 57, 113, 159),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
              iconSize: 32,
              color: const Color.fromARGB(255, 57, 113, 159),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),

            //cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5250.21,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.deepPurple[400],
                  ),
                  MyCard(
                    balance: 300.16,
                    cardNumber: 028577429,
                    expiryMonth: 06,
                    expiryYear: 25,
                    color: Colors.blue[400],
                  ),
                  MyCard(
                    balance: 11500.68,
                    cardNumber: 0346740566,
                    expiryMonth: 05,
                    expiryYear: 23,
                    color: Colors.green[400],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),

            SizedBox(height: 40),
            //3 buttons --> send + pay button + bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  MyButton(
                    buttonText: 'Send',
                    iconImagePath: 'lib/Icons/send-money.png',
                  ),
                  MyButton(
                    buttonText: 'Pay',
                    iconImagePath: 'lib/Icons/credit-card.png',
                  ),
                  MyButton(
                    buttonText: 'Bills',
                    iconImagePath: 'lib/Icons/bill.png',
                  ),
                  //pay button
                  //bill button
                ],
              ),
            ),
            SizedBox(height: 40),

            //columns --> stats + transactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //statistics
                  MyListTile(
                      iconImagePath: 'lib/Icons/statistics.png',
                      tileTitle: 'Statistics',
                      tileSubTitle: 'Payments and Income'),
                  //transaction history
                  MyListTile(
                      iconImagePath: 'lib/Icons/transaction.png',
                      tileTitle: 'Transactions',
                      tileSubTitle: 'Transcation history')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
