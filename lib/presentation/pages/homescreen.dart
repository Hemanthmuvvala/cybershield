import 'package:flutter/material.dart';
import 'safety_measure.dart'; // Awareness tips screen

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a0f1f), // Cyber dark background
      appBar: AppBar(
        backgroundColor: const Color(0xff0a0f1f),
        title: const Center(
          child: Text(
            'Cyber Shield',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
             
              color: Colors.cyanAccent,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Row 1: Stats
            Row(
              children: [
                _buildStatCard(
                  icon: Icons.language,
                  title: 'Global Threats',
                  value: '125K+',
                  color: Colors.deepPurpleAccent,
                ),
                const SizedBox(width: 12),
                _buildStatCard(
                  icon: Icons.security,
                  title: 'Attacks Blocked',
                  value: '87',
                  color: Colors.tealAccent.shade400,
                ),
              ],
            ),

            const SizedBox(height: 20),

            _buildWideCard(
              icon: Icons.key,
              title: '16 billion Password breach',
              subtitle:
                  '16 billion user passwords has been stolen from various big companies',
              color: Colors.cyanAccent,
            ),
            _buildWideCard(
              icon: Icons.warning_amber_rounded,
              title: 'Latest Cyber Alert',
              subtitle:
                  'Massive phishing scam targeting Gmail users. Avoid suspicious links!',
              color: Colors.orangeAccent,
            ),

            const SizedBox(height: 20),

            // Awareness Tips Section
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SafetyMeasure()));
              },
              child: _buildWideCard(
                icon: Icons.lightbulb_outline,
                title: 'Cyber Awareness Tips',
                subtitle:
                    'Know how to stay safe online. Tap to explore 10 smart practices.',
                color: Colors.greenAccent,
              ),
            ),

            const SizedBox(height: 20),

            _buildWideCard(
              icon: Icons.map,
              title: 'Live Global Threat Map',
              subtitle:
                  'Tracking real-time digital threats across regions. (Mock Data)',
              color: Colors.redAccent.shade200,
            ),

            _buildWideCard(
              icon: Icons.data_usage,
              title: 'Suspicious Data Spike',
              subtitle:
                  'Unusual data activity detected in your network last night.',
              color: Colors.amberAccent,
            ),

            _buildWideCard(
              icon: Icons.bug_report,
              title: 'Zero-Day Vulnerability Alert',
              subtitle: 'Chrome users urged to update browsers immediately.',
              color: Colors.deepOrangeAccent,
            ),

            _buildWideCard(
              icon: Icons.account_circle,
              title: 'Login Attempt from New Device',
              subtitle: 'Someone tried logging into your account from Russia.',
              color: Colors.purpleAccent,
            ),

            _buildWideCard(
              icon: Icons.storage,
              title: 'Ransomware Threat Blocked',
              subtitle:
                  'A malicious file was blocked before encrypting your storage.',
              color: Colors.pinkAccent,
            ),

            _buildWideCard(
              icon: Icons.update,
              title: 'Security Patch Available',
              subtitle: 'Update your OS now to fix high-risk vulnerabilities.',
              color: Colors.lightGreenAccent,
            ),

            _buildWideCard(
              icon: Icons.warning_amber,
              title: 'Phishing Domain Detected',
              subtitle: 'A fake banking site was reported and blacklisted.',
              color: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }

  // Card builder for Stats (Row-based)
  Widget _buildStatCard(
      {required IconData icon,
      required String title,
      required String value,
      required Color color}) {
    return Expanded(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: const Color(0xff121d36),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            children: [
              Icon(icon, size: 32, color: color),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Wide Card (for alerts or tips)
  Widget _buildWideCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: const Color(0xff121d36),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 32, color: color),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
