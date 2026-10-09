import 'package:flutter/material.dart';

void main() {
  runApp(const TelebirrApp());
}

class TelebirrApp extends StatelessWidget {
  const TelebirrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telebirr UI',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF4F6F8),
        useMaterial3: true,
      ),
      home: const TelebirrHomeScreen(),
    );
  }
}

class TelebirrHomeScreen extends StatefulWidget {
  const TelebirrHomeScreen({super.key});

  @override
  State<TelebirrHomeScreen> createState() => _TelebirrHomeScreenState();
}

class _TelebirrHomeScreenState extends State<TelebirrHomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Ethio Telecom & Telebirr Logo Header Bar
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.public, color: Color(0xFF8DC63F), size: 28),
                      SizedBox(width: 6),
                      Text(
                        'ethio telecom',
                        style: TextStyle(
                          color: Color(0xFF0054A6),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.flash_on, color: Color(0xFF00AEEF), size: 24),
                      SizedBox(width: 4),
                      Text(
                        'telebirr',
                        style: TextStyle(
                          color: Color(0xFF00AEEF),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Scrollable Main Section
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Green Header with Profile and Updated Balance
                    const BalanceHeaderSection(),

                    // Orange Announcement Banner
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                      color: const Color(0xFFFAA61A),
                      child: const Text(
                        'ONE APP FOR ALL',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),

                    // Grid Menu Items
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Expanded(
                                child: ServiceCard(
                                  icon: Icons.account_balance_wallet_outlined,
                                  title: 'Send\nMoney',
                                  iconColor: Color(0xFF8DC63F),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: ServiceCard(
                                  icon: Icons.add_card,
                                  title: 'Cash In/\nOut',
                                  iconColor: Color(0xFF8DC63F),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: ServiceCard(
                                  icon: Icons.card_giftcard,
                                  title: 'Airtime/\nBuy\nPackage',
                                  badgeText: 'Up to 35%',
                                  iconColor: Color(0xFF8DC63F),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: ServiceCard(
                                  icon: Icons.store,
                                  title: 'Zemen\nGEBEYA',
                                  iconColor: Color(0xFF004D40),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: const [
                              Expanded(
                                child: ServiceCard(
                                  icon: Icons.account_balance,
                                  title: 'Financial\nService\nWith\nDashen',
                                  iconColor: Color(0xFF1565C0),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: ServiceCard(
                                  icon: Icons.monetization_on_outlined,
                                  title: 'Financial\nService\nWith CBE',
                                  iconColor: Color(0xFFB71C1C),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: ServiceCard(
                                  icon: Icons.business,
                                  title: 'Financial\nService\nwith\nSiinqee',
                                  iconColor: Color(0xFFE65100),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: ServiceCard(
                                  icon: Icons.assured_workload,
                                  title: 'Transfer to\nBank',
                                  iconColor: Color(0xFF8DC63F),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Scan QR Button & Location Button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF0088CE),
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 14),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              onPressed: () {},
                              icon: const Icon(Icons.qr_code_scanner, size: 26),
                              label: const Text(
                                'Scan QR',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: IconButton(
                              iconSize: 30,
                              icon: const Icon(Icons.location_on, color: Color(0xFF8DC63F)),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF8DC63F),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Payment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Apps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Engage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

// Balance Header Widget
class BalanceHeaderSection extends StatelessWidget {
  const BalanceHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF8DC63F),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white24,
                child: Icon(Icons.person, color: Colors.white),
              ),
              const SizedBox(width: 8),
              const Text(
                'Selam, Abraham',
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Icon(Icons.search, color: Colors.white, size: 22),
              const SizedBox(width: 12),
              const Icon(Icons.notifications_none, color: Colors.white, size: 22),
              const SizedBox(width: 12),
              Row(
                children: const [
                  Text('English', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  Icon(Icons.arrow_drop_down, color: Colors.white),
                ],
              ),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Balance (ETB)', style: TextStyle(color: Colors.white, fontSize: 15)),
              SizedBox(width: 6),
              Icon(Icons.visibility, color: Colors.white, size: 18),
            ],
          ),
          const SizedBox(height: 4),
          const Text(
            '171,344.01',
            style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Row(
                    children: const [
                      Text('Endekise (ETB)', style: TextStyle(color: Colors.white70, fontSize: 12)),
                      SizedBox(width: 4),
                      Icon(Icons.visibility, color: Colors.white70, size: 14),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Text('--', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: const [
                      Text('Reward (ETB)', style: TextStyle(color: Colors.white70, fontSize: 12)),
                      SizedBox(width: 4),
                      Icon(Icons.visibility, color: Colors.white70, size: 14),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Text('0.00', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

// Grid Card Widget
class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? badgeText;
  final Color iconColor;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    this.badgeText,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 110,
          width: double.infinity,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 32, color: iconColor),
              const SizedBox(height: 6),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  height: 1.1,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
        if (badgeText != null)
          Positioned(
            top: -8,
            right: 0,
            left: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color(0xFFFAA61A),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  badgeText!,
                  style: const TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
