import 'dart:html';

import 'package:flutter/material.dart';
import 'package:whatsapp/main.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(const MyApp());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Text('Chats'),
            Text('Status'),
            Text('Calls'),
          ]),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 40),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                  const PopupMenuItem(value: 1, child: Text('new group')),
                  const PopupMenuItem(value: 2, child: Text('profile')),
                  const PopupMenuItem(value: 3, child: Text('setting')),
                ],
              ),
            )
          ],
        ),
        body: TabBarView(children: [
          //camera
          Tab(child: Center(child: Text('Phome Gallery Loding ...'))),
          //chats
          Tab(
              child: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              if (index % 3 == 0) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('Aleena Hayat'),
                  subtitle: Text('there is heavy rain outside ..'),
                  trailing: Text('11:30 pm'),
                );
              } else {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.pinterest.com/pin/689965605404523856/'),
                  ),
                  title: Text('haseena gull'),
                  subtitle: Text('where are you now ? '),
                  trailing: Text('8:30 pm'),
                );
              }
            },
          )),
          //status
          Tab(
              child: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              if (index % 2 == 0) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        )),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      ),
                    ),
                  ),
                  title: Text('Aleena Hayat'),
                  subtitle: Text('25 min ago'),
                );
              } else {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        )),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://www.google.com/imgres?imgurl=https%3A%2F%2Fi.pinimg.com%2F474x%2F66%2F60%2F1e%2F66601e8b22323ec0f8f5f824d3fab917.jpg&imgrefurl=https%3A%2F%2Fwww.pinterest.com%2Fmh14ipk%2Fprofile-pics%2F&tbnid=a1vAxCUqCOCHVM&vet=12ahUKEwj__triwoj6AhXozIUKHZgHBCQQMygjegUIARCqAg..i&docid=7sp5d1FFMRL26M&w=393&h=393&q=profile%20pic&ved=2ahUKEwj__triwoj6AhXozIUKHZgHBCQQMygjegUIARCqAg',
                      ),
                    ),
                  ),
                  title: Text('sanjlla emann'),
                  subtitle: Text('2 min ago'),
                );
              }
            },
          )),
          Tab(
              child: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  ),
                ),
                title: Text('Aleena Hayat'),
                subtitle: Text('1 hur ago'),
                trailing: Icon(Icons.phone),
              );
            },
          )),
        ]),
      ),
    );
  }
}
