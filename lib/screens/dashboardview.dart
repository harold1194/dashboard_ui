import 'package:dashboard_ui/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Full-screen background
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    GlobalColors.solidColor,
                    GlobalColors.whiteColor,
                  ],
                ),
              ),
            ),
          ),

          // Foreground: dashboard label at top-left with subtitle below
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dashboard',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Account Officer',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Profile: xxxxxx',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: GlobalColors.whiteColor,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Staff Name: xxxxxx',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: GlobalColors.whiteColor,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Registered Office: xxxxxx',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: GlobalColors.whiteColor,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Registered Role: xxxxxx',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: GlobalColors.whiteColor,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      // Buttons row - expanded to fill width and touch edges
                      Row(
                        children: [
                          // First button
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.12),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.white24),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      // color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Icon(Icons.person_add,
                                        color: Colors.white, size: 25),
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    'Add Members',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 12), // space between buttons

                          // Second button
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.12),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.white24),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 28,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      // color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Icon(Icons.fingerprint,
                                        color: Colors.white, size: 28),
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    'Verify Existing Clients',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Statistic',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),

                      // Ticket status row: make 4 cards evenly spaced and almost touch edges
                      Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 6.0),
                                child: _buildTicketStatusCard(
                                  number: '10',
                                  label: 'Drafts',
                                  badgeColor: Color(0xFF1E3A8A),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 6.0),
                                child: _buildTicketStatusCard(
                                  number: '10',
                                  label: 'Client Pendings',
                                  badgeColor: Color(0xFFF59E0B),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 6.0),
                                child: _buildTicketStatusCard(
                                  number: '10',
                                  label: 'Clients Approved',
                                  badgeColor: Color(0xFF10B981),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: _buildTicketStatusCard(
                                  number: '5',
                                  label: 'Clients Disapproved',
                                  badgeColor: Color(0xFFEF4444),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Task',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 10),
                      // Vertical list of nav items (Home / My Tickets / Tasks / Account)
                      Column(
                        children: [
                          SizedBox(height: 8),
                          _buildNavListItem(
                              icon: Icons.handyman,
                              label: 'Rebuild Database',
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => _PlaceholderPage(
                                        title: 'Rebuild Database')));
                              }),
                          SizedBox(height: 8),
                          _buildNavListItem(
                              icon: Icons.key,
                              label: 'Change Password',
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) =>
                                        _PlaceholderPage(title: 'My Tickets')));
                              }),
                          SizedBox(height: 8),
                          _buildNavListItem(
                              icon: Icons.sync,
                              label: 'Synchronize',
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) =>
                                        _PlaceholderPage(title: 'Tasks')));
                              }),
                          SizedBox(height: 8),
                          _buildNavListItem(
                              icon: Icons.logout,
                              label: 'Logout',
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) =>
                                        _PlaceholderPage(title: 'Account')));
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomSheet: _buildFooter(),
    );
  }

  // Build footer widget
  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border(top: BorderSide(color: Colors.grey[300]!, width: 1)),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/mrilogo2.png',
            scale: 2,
          ),
          SizedBox(height: 4),
          Text(
            'Idle Time: 14:33',
            style: TextStyle(fontSize: 11, color: Colors.grey[700]),
          ),
          const Text(
            'Product by: CMIT Inc. © 2023 v | FMT-',
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(height: 12),
          Divider(height: 1, color: Colors.grey[400]),
          SizedBox(height: 12),
        ],
      ),
    );
  }

  Widget _buildTicketStatusCard({
    required String number,
    required String label,
    required Color badgeColor,
  }) {
    return Container(
      // allow parent constraints (Expanded) to control width; don't force fixed width
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Badge with number
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: badgeColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                number,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          // Label text
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  // Reusable nav list item
  Widget _buildNavListItem(
      {required IconData icon,
      required String label,
      required VoidCallback onTap}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.06),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white12),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: GlobalColors.solidColor, size: 20),
              ),
              SizedBox(width: 12),
              Text(label,
                  style:
                      TextStyle(color: GlobalColors.blackColor, fontSize: 16)),
              Spacer(),
              Icon(Icons.chevron_right, color: GlobalColors.solidColor),
            ],
          ),
        ),
      ),
    );
  }
}

// Simple placeholder page used for navigation targets
class _PlaceholderPage extends StatelessWidget {
  final String title;
  const _PlaceholderPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text(title), backgroundColor: GlobalColors.solidColor),
      body: Center(child: Text('$title page', style: TextStyle(fontSize: 18))),
    );
  }
}
