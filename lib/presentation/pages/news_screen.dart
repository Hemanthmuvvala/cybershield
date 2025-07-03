import 'package:cybershield/presentation/widgets/news_card.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: const Color(0xff0a0f1f),
        title: const Center(
          child: Text(
            ' Cyber News',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
             
              color: Colors.cyanAccent,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0A0E27),
              Color(0xFF1A1D3A),
              Color(0xFF2D3561),
            ],
          ),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              NewsCard(
                avatarColor:Colors.red,
                source: "Times of India",
                avatar: "TOI",
                title: "Cyberattacks on Indian hospitals increase in 2024",
                imagePath: 'assets/images/cybernews.webp',
                fullContent:
                    "Hospitals in India are now primary targets of ransomware attacks. The Ministry of Health has urged institutions to adopt better cyber hygiene practices...",
              ),
              NewsCard(
                    avatarColor:Colors.blue,
                source: "ETV Bharat",
                avatar: "ETV",
                title: "PhonePe scam tricks users with fake refund calls",
                imagePath: 'assets/images/phonepe.jpeg',
                fullContent:
                    "Fraudsters pretending to be PhonePe support are luring users into sharing OTPs. The company has released guidelines to identify such scams...",
              ),
              NewsCard(
                    avatarColor:Colors.redAccent,
                source: "NDTV",
                avatar: "NDTV",
                title: "OTP scams surge across major cities",
                imagePath: 'assets/images/otp.png',
                fullContent:
                    "Cybercriminals are increasingly using OTP scams to hack into banking apps and UPI platforms. Never share your OTP with anyone...",
              ),
              NewsCard(
                avatarColor:Color.fromARGB(255, 156, 233, 158),
                source: "CyberSafe India",
                avatar: "CS",
                title: "Online job scams targeting college students",
                imagePath: 'assets/images/onlinescam.jpeg',
                fullContent:
                    "Many students are falling for fake job postings on social media. Authorities recommend verifying job links and using trusted platforms...",
              ),
              NewsCard(
                    avatarColor:Colors.grey,
                source: "Indian Express",
                avatar: "IE",
                title: "Lottery frauds promising crores via WhatsApp",
                imagePath: 'assets/images/lottery.jpeg',
                fullContent:
                    "Scammers are sending fake lottery messages claiming users have won crores. Cyber police warn against clicking such links...",
              ),
              NewsCard(
                    avatarColor:Color.fromARGB(255, 52, 232, 238),
                source: "News18 Tech",
                avatar: "N18",
                title: "Online game apps leak user data to dark web",
                imagePath: 'assets/images/gamesscam.webp',
                fullContent:
                    "Several gaming apps have been flagged for leaking sensitive user data. Users are advised to avoid giving camera and contact access unnecessarily...",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
