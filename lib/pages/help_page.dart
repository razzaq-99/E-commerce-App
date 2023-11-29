import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Help Center"),
        backgroundColor: Colors.orange.shade600,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 3,
                child: ExpansionTile(
                  title: const Text(
                    "Please Help me in getting right choice?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    Container(
                      child: const Text(
                        "Our all Products are high quality and Premuim and "
                        "don't hesitate in buying products because we "
                        "offer emotions rather than items.",
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                      // color: Colors.black87,
                    ),
                  ],
                ),
              ),
              const AspectRatio(
                aspectRatio: 3,
                child: ExpansionTile(
                  title: Text(
                    "Is there any process for return back item?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    Text(
                      "Yes! You can go to TCS or any other service then submit there. Firstly you have to contact us.",
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    )
                  ],
                ),
              ),
              const AspectRatio(
                aspectRatio: 3,
                child: ExpansionTile(
                  title: Text(
                    "How much warranty will you give?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    Text(
                      "Firstly, we don't give you warranty because our products never betray customers and our Products are Priceless.",
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ],
                ),
              ),
              const AspectRatio(
                aspectRatio: 3,
                child: ExpansionTile(
                  title: Text(
                    "How many days the item will be delivered?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    Text(
                      "We also don't want to delay in our delivery. Normal delivery days are monday to Friday.",
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ],
                ),
              ),
              const AspectRatio(
                aspectRatio: 3,
                child: ExpansionTile(
                  title: Text(
                    "Other?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    Text(
                      "Contact Us: (0322-2122-121)",
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
