import 'package:ecoflux/pages/edit_profile_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7EF),
      appBar: CustomAppBar(title: 'Minha Conta'),
      bottomNavigationBar: BottomNavBar(currentIndex: 3),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Avatar com sombra
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green.shade200,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
            ),
            SizedBox(height: 12),

            // Nome e email
            Text(
              'João Silva',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('joao@email.com', style: TextStyle(color: Colors.grey[600])),

            // Botão de editar perfil
            TextButton.icon(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => EditProfileScreen()),
                );
              },
              icon: Icon(Icons.edit, size: 18),
              label: Text("Editar perfil"),
              style: TextButton.styleFrom(
                foregroundColor: Colors.green.shade800,
              ),
            ),

            SizedBox(height: 24),

            // Card com itens de menu
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text('Histórico de créditos'),
                    onTap: () {
                      // futura tela de histórico
                    },
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Configurações'),
                    onTap: () {
                      // futura tela de config
                    },
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.red),
                    title: Text('Sair'),
                    onTap: () {
                      // lógica de logout
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
