import 'package:ecoflux/pages/about_screen.dart';
import 'package:ecoflux/pages/calculator_screen.dart';
import 'package:ecoflux/widgets/impact_stats.dart';
import 'package:ecoflux/widgets/bottom_nav_bar.dart';
import 'package:ecoflux/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ... seus imports continuam os mesmos

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7EF),
      appBar: CustomAppBar(title: 'EcoFlex'),
      bottomNavigationBar: BottomNavBar(currentIndex: 0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Rumo a um\nFuturo\nCarbono Zero',
                style: TextStyle(
                  fontSize: 50,
                  height: 1.2,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF0A361A),
                ),
                textAlign: TextAlign.left,
              ),
            ),

            // Descrição
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Carta de crédito para vender para empresas ou até pessoas que produzem muito carbono',
                style: TextStyle(fontSize: 20, color: const Color(0xFF0A361A)),
                textAlign: TextAlign.left,
              ),
            ),

            // Botão Saiba Mais
            Padding(
              padding: EdgeInsets.only(left: 16, top: 16),
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AboutScreen()),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0A361A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                  elevation: 0,
                ),
                child: Text(
                  'Saiba Mais',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),

            SizedBox(height: 30),
            ImpactStats(),
            SizedBox(height: 30),

            // Acesso à Calculadora
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CalculatorScreen()),
              ),
              child: Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Calculadora de Emissão de Carbono',
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),

            // Ações Rápidas
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Ações Rápidas',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF0A361A)),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _quickAction(Icons.nature, 'Plantar\nÁrvore'),
                  _quickAction(Icons.volunteer_activism, 'Doar\nProjeto'),
                  _quickAction(Icons.lightbulb_outline, 'Trocar\nEnergia'),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Dicas Sustentáveis
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Dicas Sustentáveis',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF0A361A)),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '🚿 Tome banhos mais curtos',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Economize água e energia reduzindo o tempo de banho para menos de 5 minutos.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Banner Campanha
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green[300],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Icon(Icons.emoji_events, size: 40, color: Colors.white),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Meta do mês: compensar 10 toneladas de CO₂!\nParticipe e acompanhe o progresso.',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _quickAction(IconData icon, String label) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.green[200],
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(16),
          child: Icon(icon, size: 30, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}

