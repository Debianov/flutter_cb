import 'package:flutter/material.dart';
import 'package:part_9/models/user.dart';
import 'package:part_9/screens/UserDetailScreen.dart';

List<User> usersList = [
  User(
      age: 16,
      firstName: 'Иван',
      lastName: 'Маисеев',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar: 'https://i.playground.ru/i/pix/1523767/image.jpg'),
  User(
      age: 18,
      firstName: 'Иван',
      lastName: 'Чудин',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar: 'https://i.playground.ru/i/pix/1523767/image.jpg'),
  User(
      age: 20,
      firstName: 'Иван',
      lastName: 'Степанов',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar: 'https://i.playground.ru/i/pix/1523767/image.jpg'),
];

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: usersList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserDetailScreen(
                            user: usersList[index],
                          ))
                          );
            },
            child: Card(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      child: usersList[index].avatar == ""
                          ? Image.network(
                              "https://www.vip-bet.com/wp-content/uploads/2017/01/dota2.png")
                          : Image.network(usersList[index].avatar,
                              fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Имя: ' + usersList[index].firstName,
                            textAlign: TextAlign.left,
                          ),
                          Text('Фамилия: ' + usersList[index].lastName),
                          Text('Возраст: ' + usersList[index].age.toString()),
                          Text('Телефон: ' + usersList[index].phone),
                          Text('Телефон: ' + usersList[index].email),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
          );
        });
  }
}
