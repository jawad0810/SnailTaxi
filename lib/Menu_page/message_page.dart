//===================
import 'package:flutter/material.dart';
import 'package:snail_taxi_app/Menu_page/chatpages/messagepage.dart';
import 'package:snail_taxi_app/onboarding/utils/app_theme.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: AppTheme.grey,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      //color: Colors.red,
                      child: Image.asset(
                        "assets/images/Back.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Container(
                    // color: Colors.red,
                    alignment: Alignment.center,
                    child: const Text(
                      'Notification',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 200,
                //color: Colors.red,
                child: Image.asset(
                  "assets/images/Notification.png",
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'No Notificatoin Yet',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'When you get notification, they will show up here',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 150,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Return',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const
                                //getstart()
                                MessageChatPage()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
