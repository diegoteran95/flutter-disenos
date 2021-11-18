import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen central
          Image(
            image: AssetImage('assets/landscape.jpg'),
          ),

          //Title widget
          Title(),

          //Button section
          ButtonSection(),

          // Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Text(
                    'Ullamco dolore ut incididunt amet culpa ut esse commodo aute. Officia aliqua velit veniam commodo mollit aute. Eu consectetur eu velit voluptate exercitation eu aliquip excepteur anim qui. Esse anim esse tempor laborum nisi ad. Lorem reprehenderit nulla sit sint est dolor anim eiusmod nisi irure consectetur. Sunt laboris excepteur labore nulla laborum eu id non sint ullamco laborum excepteur. Ut cupidatat dolore occaecat consectetur minim.'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Oeschinen Lake Comground',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(color: Colors.black45),
            )
          ],
        ),
        Expanded(child: Container()),
        Icon(
          Icons.star,
          color: Colors.red,
        ),
        Text('41')
      ]),
    );
  }
}

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.location_on, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.lightBlue,
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.lightBlue),
        )
      ],
    );
  }
}
