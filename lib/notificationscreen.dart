import 'package:flutter/material.dart';

class NotifView extends StatefulWidget {
  const NotifView({Key? key}) : super(key: key);

  @override
  State<NotifView> createState() => _NotifViewState();
}

class _NotifViewState extends State<NotifView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          // Notification Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                // Notification Icon or Image
                Icon(
                  Icons.notifications, // You can use any notification icon here
                  size: 48,
                  color: Colors.black,
                ),
                SizedBox(width: 16),
                // Notification Text
                Text(
                  'Notification',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // First ListTile
          ListTile(
            leading: ClipOval(
              child: Image.network(
                'https://media.istockphoto.com/id/1311084168/photo/overjoyed-pretty-asian-woman-look-at-camera-with-sincere-laughter.jpg?s=612x612&w=0&k=20&c=akS4eKR3suhoP9cuk7_7ZVZrLuMMG0IgOQvQ5JiRmAg=',
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              "Ayesha's",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '"Ayesha Website is a fantastic online destination. The design is modern and user-friendly, and I had a seamless experience finding what I needed. Ayesha Website has become my preferred choice."',
              style: TextStyle(color: Colors.grey),
            ),
          ),

          // Light Color Line
          Divider(color: Colors.grey, thickness: 1, height: 1),

          // Second ListTile
          ListTile(
            leading: ClipOval(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHjsNx4l_FVVo4W9lhWoG0iyqkvRa_99Alpw&usqp=CAU',
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'Umer  Ahmed',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Ayesha Website is a true marvel. The design is captivating, and the interface is so intuitive. Its clear that the creators have put a lot of effort into ensuring a visually engaging and accessible platform.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          // Light Color Line
          Divider(color: Colors.grey, thickness: 1, height: 1),

          // Second ListTile
          ListTile(
            leading: ClipOval(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK-WyN7BYdU84Mem643abIUIq64Hk-AZQ_oA&usqp=CAU',
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'Shazia Mujeeb',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "I've been a loyal user of Ayesha Website, and it's my favorite spot for all things [mention the website's purpose]. The design is not only beautiful but also highly functional, making my online experience enjoyable.",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          // Light Color Line
          Divider(color: Colors.grey, thickness: 1, height: 1),

          // Second ListTile
          ListTile(
            leading: ClipOval(
              child: Image.network(
                'https://media.istockphoto.com/id/1007585032/photo/young-malaysian-couple-at-a-coffee-shop.jpg?s=612x612&w=is&k=20&c=96yGbvdi6AcsPr7hC0GE5VEhVBJQH8-3vITWu_M6r6s=',
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'Emaan Shahid',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
             "Kudos to the team behind Ayesha Website! The design is outstanding - modern, responsive, and visually stunning. Navigating the site is a breeze, and Safiya Khan highly recommends it.",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          // Light Color Line
          Divider(color: Colors.grey, thickness: 1, height: 1),

          // Second ListTile
          ListTile(
            leading: ClipOval(
              child: Image.network(
               "https://qph.cf2.quoracdn.net/main-qimg-bac8ccf788421258a814ba38453c9c5d-pjlq",
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'Yusra Rana',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Ayesha Website is my go-to for all things related to [mention your website's purpose]. The design is fantastic - sleek, elegant, and user-friendly. Bilal Ali appreciates the excellent user experience.",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          // Light Color Line
          Divider(color: Colors.grey, thickness: 1, height: 1),

          // Second ListTile
          ListTile(
            leading: ClipOval(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD7l4c5Et9yHqb5wzyLWS47XGkO5iBVYKuiMVuhfj8MOuYMbeKFl9Sxqdv56lZ8DNHgrM&usqp=CAU',
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'Irtaza',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "I discovered Ayesha Website, and the design immediately grabbed my attention. It's elegant and easy to use",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          // Light Color Line
          Divider(color: Colors.grey, thickness: 1, height: 1),

          // Second ListTile
          ListTile(
            leading: ClipOval(
              child: Image.network(
                'https://marketplace.canva.com/EAFTChFKUG8/1/0/1600w/canva-black-and-white-minimal-instagram-profile-picture-du_FvTmBYfk.jpg',
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              'Bilal Ali',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Ayesha Website is my go-to for all things related to [mention your website's purpose]. The design is fantastic - sleek, elegant, and user-friendly. Bilal Ali appreciates the excellent user experience.",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
