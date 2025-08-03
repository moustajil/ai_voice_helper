import 'package:aivoicehelper/Pallet.dart';
import 'package:aivoicehelper/Widget/FeiterBox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        excludeHeaderSemantics: false,
        title: const Text(
          "Aimad",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView( // <--- Scrollable for more Feiterboxes
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    width: 120,
                    height: 120,
                    margin: const EdgeInsets.all(4),
                    child: Image.asset(
                      "assets/images/ai-voice-generator.png",
                      width: 40,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              decoration: BoxDecoration(
                color: Pallete.assistantCircleColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Pallete.borderColor, width: 1.5),
              ),
              child: Text(
                "Good Morning, What task can I do for you today?",
                style: TextStyle(
                  color: Pallete.mainFontColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            Feiterbox(
              color: Colors.blue.shade100,
              title: "ChatGPT",
              description: "Ask anything and get intelligent AI-generated responses instantly.",
            ),
            Feiterbox(
              color: const Color.fromARGB(255, 217, 243, 217),
              title: "DALL·E",
              description: "Generate stunning AI art from your text descriptions.",
            ),
            Feiterbox(
              color: const Color.fromARGB(255, 244, 217, 249),
              title: "AI Assistant",
              description: "Let your voice assistant schedule, answer, and support tasks.",
            ),
            Feiterbox(
              color: const Color.fromARGB(255, 241, 220, 190),
              title: "Transcribe Audio",
              description: "Convert your voice into text quickly and accurately.",
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
