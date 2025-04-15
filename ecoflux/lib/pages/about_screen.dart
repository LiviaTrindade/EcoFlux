import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/bottom_nav_bar.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7EF),
      appBar: CustomAppBar(title: 'Sobre', showBack: true),
      bottomNavigationBar: BottomNavBar(currentIndex: 0),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildInfoCard(
              icon: Icons.eco,
              title: 'O que é o EcoFlex?',
              description:
                  'O EcoFlex é uma plataforma que ajuda empresas e pessoas a compensar suas emissões de carbono. '
                  'Através da compra de créditos de carbono, apoio ao reflorestamento e incentivo ao uso de energia limpa, '
                  'você contribui ativamente com um futuro mais sustentável.',
            ),
            SizedBox(height: 20),
            _buildInfoCard(
              icon: Icons.bar_chart,
              title: 'Nossos Objetivos',
              description:
                  '• Reduzir emissões de CO₂\n'
                  '• Reflorestar áreas da Amazônia\n'
                  '• Promover o uso de energia renovável\n'
                  '• Conscientizar sobre saúde e meio ambiente',
            ),
            SizedBox(height: 20),
            _buildInfoCard(
              icon: Icons.people,
              title: 'Por que isso importa?',
              description:
                  'Cada pequena ação conta! Ao usar o EcoFlex, você está contribuindo para um planeta mais verde, '
                  'com menos poluição e mais equilíbrio ambiental.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 40, color: const Color(0xFF0A361A)),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF0A361A),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
