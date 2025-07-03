import 'package:cybershield/presentation/pages/awareness_info.dart';
import 'package:flutter/material.dart';
// Create this page

class SafetyMeasure extends StatefulWidget {
  const SafetyMeasure({super.key});

  @override
  State<SafetyMeasure> createState() => _SafetyMeasureState();
}

class _SafetyMeasureState extends State<SafetyMeasure> {
  final List<String> _titles = [
    'Avoid Phishing Emails',
    'Use Strong Passwords',
    'Enable Two-Factor Authentication',
    'Avoid Public Wi-Fi for Sensitive Info',
    'Keep Software Updated',
    'Backup Data Regularly',
    'Be Wary of Social Engineering',
    'Secure Your Social Media',
    'Install Antivirus Software',
    'Monitor Financial Statements',
  ];

  final List<String> _descriptions = [
    'Do not click on unknown links or open attachments from suspicious emails.',
    'Use complex passwords with symbols, numbers, and uppercase letters.',
    'Always enable 2FA to add an extra security layer.',
    'Public Wi-Fi is often unsafe. Use a VPN for better protection.',
    'Install updates regularly to fix security bugs.',
    'Keep backups of your important files in case of attacks.',
    'Never share personal information with unknown callers or messages.',
    'Set profiles to private and limit who can tag or message you.',
    'Install a reputable antivirus and run regular scans.',
    'Review bank and credit statements for unfamiliar transactions.',
  ];

  final List<IconData> _icons = [
    Icons.email_outlined,
    Icons.lock_outline,
    Icons.security,
    Icons.wifi_off,
    Icons.system_update,
    Icons.backup_outlined,
    Icons.warning_amber_outlined,
    Icons.privacy_tip_outlined,
    Icons.shield_outlined,
    Icons.account_balance_wallet_outlined,
  ];
  final List<String> images = [
    'assets/images/cybernews.webp',
    'assets/images/phonepe.jpeg',
    'assets/images/otp.png',
    'assets/images/onlinescam.jpeg',
    'assets/images/lottery.jpeg',
    'assets/images/gamesscam.webp',
    'assets/images/eye.jpeg',
    'assets/images/hackers.jpeg',
    'assets/images/databreach.jpeg',
    'assets/images/password.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
     appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Center(
          child: Text(
            'Safety Tips',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              
              color: Colors.cyanAccent,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Expanded(
            child: ListView.separated(
              itemCount: _titles.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => AwarenessDetail(
                          title: _titles[index],
                          description: _descriptions[index],
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2.0, vertical: 6),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.blue.withOpacity(0.2),
                            ),
                            child: Icon(
                              _icons[index],
                              color: const Color.fromARGB(255, 144, 205, 255),
                              size: 22,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _titles[index],
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  _descriptions[index],
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            images[index],
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                height: 1,
                color: Color.fromARGB(255, 148, 148, 148),
                thickness: 0.5,
                indent: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
