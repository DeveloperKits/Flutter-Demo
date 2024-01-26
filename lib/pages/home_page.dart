import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Hello Akash"),
      ),
      body: const ScrollBody(),
    );
  }
}

class ScrollBody extends StatelessWidget {
  const ScrollBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                "https://t4.ftcdn.net/jpg/05/72/82/85/360_F_572828530_ofzCYowQVnlOwkcoBJnZqT36klbJzWdn.jpg",
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),

              const Positioned(
                right: 20,
                bottom: 10,
                child: Center(
                  child: Text(
                    "Hello Akash",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const TittleBar(),

          const ContactsAction(),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Text(
              longtext,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class TittleBar extends StatelessWidget {
  const TittleBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text("Name: Ferry"),
      subtitle: Text("Location: Dhaka, Bangladesh"),
      trailing: Icon(
        Icons.cable_outlined,
        color: Colors.orangeAccent,
      ),
    );
  }
}

class ContactsAction extends StatelessWidget {
  const ContactsAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomAction(iconData: Icons.account_balance, text: "Bank",),
          CustomAction(iconData: Icons.account_balance_wallet, text: "Balance"),
          CustomAction(iconData: Icons.credit_card, text: "Card"),
        ],
      ),
    );
  }
}

class CustomAction extends StatelessWidget {
  const CustomAction({
    super.key, required this.iconData, required this.text,
  });

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(iconData, size: 35, color: Colors.orangeAccent,),
        const SizedBox(height: 5.0,),
        Text(
          text,
          style: const TextStyle(color: Colors.orangeAccent),
        ),
      ],
    );
  }
}

const longtext = '''Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?''';