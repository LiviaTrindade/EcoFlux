import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/bottom_nav_bar.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double distance = 0;
  String transport = 'Carro';
  double energy = 0;
  double result = 0;

  void _calculateEmission() {
    double emission = 0;

    Map<String, double> transportEmission = {
      'Carro': 0.21,
      'Ônibus': 0.10,
      'Avião': 0.28,
      'Bicicleta': 0.0,
      'A pé': 0.0,
    };

    emission += distance * (transportEmission[transport] ?? 0.2);
    emission += energy * 0.085;

    setState(() {
      result = emission;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Calculadora'),
      bottomNavigationBar: BottomNavBar(currentIndex: 2),
      backgroundColor: const Color(0xFFF7F7EF),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Calcule sua emissão de carbono mensal',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 30),
            Row(
              children: [
                Icon(Icons.directions_car, color: Colors.green),
                SizedBox(width: 8),
                Text('Distância percorrida (km):'),
              ],
            ),
            Slider(
              value: distance,
              onChanged: (val) => setState(() => distance = val),
              min: 0,
              max: 500,
              divisions: 100,
              label: distance.toStringAsFixed(0),
              activeColor: Colors.green,
              inactiveColor: Colors.green.shade100,
            ),

            Divider(height: 32),

            Row(
              children: [
                Icon(Icons.emoji_transportation, color: Colors.green),
                SizedBox(width: 8),
                Text('Tipo de transporte:'),
              ],
            ),
            DropdownButton<String>(
              value: transport,
              isExpanded: true,
              items:
                  ['Carro', 'Ônibus', 'Avião', 'Bicicleta', 'A pé']
                      .map((t) => DropdownMenuItem(value: t, child: Text(t)))
                      .toList(),
              onChanged: (value) => setState(() => transport = value!),
            ),

            SizedBox(height: 32),

            Row(
              children: [
                Icon(Icons.flash_on, color: Colors.green),
                SizedBox(width: 8),
                Text('Consumo de energia (kWh/mês):'),
              ],
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Ex: 150'),
              onChanged: (val) => energy = double.tryParse(val) ?? 0,
            ),

            SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: _calculateEmission,
                icon: Icon(Icons.calculate),
                label: Text('Calcular Emissão'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ),

            SizedBox(height: 30),

            if (result > 0)
              Column(
                children: [
                  Card(
                    color: Colors.green.shade100,
                    elevation: 4,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '🌍 Sua estimativa mensal:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '${result.toStringAsFixed(2)} kg de CO₂',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            '📌 Isso equivale a aproximadamente:',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 6),
                          Text(
                            '🚗 ~${(result / 0.21).toStringAsFixed(0)} km de carro',
                          ),
                          Text(
                            '💡 ~${(result / 0.085).toStringAsFixed(0)} kWh de energia',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.volunteer_activism, color: Colors.white),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Você pode compensar essa emissão plantando cerca de ${(result / 21).toStringAsFixed(0)} árvores por mês.',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
