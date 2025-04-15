import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/bottom_nav_bar.dart';

class ImpactScreen extends StatelessWidget {
  final int treesPlanted = 134;
  final double carbonOffset = 7.5; // em toneladas
  final double goalOffset = 10.0;

  @override
  Widget build(BuildContext context) {
    double progress = (carbonOffset / goalOffset).clamp(0, 1);

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7EF),
      appBar: CustomAppBar(title: 'Seu Impacto'),
      bottomNavigationBar: BottomNavBar(currentIndex: 1),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Árvores
            Text('🌿 Árvores Plantadas', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.park, color: Colors.green, size: 40),
                title: Text('$treesPlanted árvores'),
                subtitle: Text('Com sua contribuição!'),
              ),
            ),
            SizedBox(height: 20),

            // CO2 Compensado
            Text('🌀 CO₂ Compensado', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.cloud_done, color: Colors.blue, size: 40),
                title: Text('$carbonOffset toneladas'),
                subtitle: Text('Equivalente a 1 ano de uso de carro.'),
              ),
            ),
            SizedBox(height: 20),

            // Barra de progresso
            Text('🎯 Progresso da Meta', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              minHeight: 12,
            ),
            SizedBox(height: 8),
            Text('${(progress * 100).toStringAsFixed(1)}% da meta de $goalOffset toneladas atingida'),

            SizedBox(height: 30),

            // Comparativo divertido
            Text('💡 Sabia que isso equivale a:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            _equivalentTile(Icons.directions_car, '9.000 km de carro evitados'),
            _equivalentTile(Icons.flight, '1 voo internacional compensado'),
            _equivalentTile(Icons.bolt, '3 meses de energia de uma casa média'),

            SizedBox(height: 30),

            // Chamada para ação
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Icon(Icons.add_circle_outline, size: 40, color: Colors.white),
                  SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      'Continue contribuindo para bater novas metas! Plante mais árvores ou compartilhe o app.',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _equivalentTile(IconData icon, String text) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, color: Colors.teal, size: 32),
        title: Text(text),
      ),
    );
  }
}
