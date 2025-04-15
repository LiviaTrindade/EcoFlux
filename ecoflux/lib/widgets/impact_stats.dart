import 'package:flutter/material.dart';

class ImpactStats extends StatelessWidget {
  final int trees = 134;
  final double co2 = 7.5;
  final int users = 58;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          'Impacto do EcoFlex até agora',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color(0xFF0A361A)),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildStatCard('🌳 Árvores', '$trees', Colors.green.shade100),
            _buildStatCard('💨 CO₂ (t)', co2.toStringAsFixed(1), Colors.yellow.shade100),
            _buildStatCard('👥 Usuários', '$users', Colors.orange.shade100),
          ],
        ),
      ],
    );
  }

  Widget _buildStatCard(String title, String value, Color bgColor) {
    return Container(
      width: 120,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Column(
        children: [
          Text(value, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
