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
                  child: SingleChildScrollView(
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
                            color: Colors.white70,
                            fontSize: 30,
                          ),
                        ),
                        Text('Profile: xxxxxx'),
                        Text('Staff Name: xxxxxx'),
                        Text('Registered Office: xxxxxx'),
                        Text('Registered Role: xxxxxx'),
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
                                        color: Colors.blueAccent,
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
                                        color: Colors.blueAccent,
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
                        SizedBox(height: 20),
                        Text(
                          'Ticket Status',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 12),
                        // Ticket Status - 4 cards
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              // New Tickets
                              _buildTicketStatusCard(
                                number: '10',
                                label: 'Drafts',
                                badgeColor: Color(0xFF1E3A8A), // Dark blue
                              ),
                              SizedBox(width: 12),
                              // In Progress
                              _buildTicketStatusCard(
                                number: '10',
                                label: 'Client Pending',
                                badgeColor: Color(0xFFF59E0B), // Amber/Orange
                              ),
                              SizedBox(width: 12),
                              // Closed Tickets
                              _buildTicketStatusCard(
                                number: '10',
                                label: 'Client Approved',
                                badgeColor: Color(0xFF10B981), // Teal/Green
                              ),
                              SizedBox(width: 12),
                              // Pending
                              _buildTicketStatusCard(
                                number: '5',
                                label: 'Client Disapproved',
                                badgeColor: Color(0xFFEF4444), // Red
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Statistic',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build ticket status card
  Widget _buildTicketStatusCard({
    required String number,
    required String label,
    required Color badgeColor,
  }) {
    return Container(
      width: 100,
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
}
