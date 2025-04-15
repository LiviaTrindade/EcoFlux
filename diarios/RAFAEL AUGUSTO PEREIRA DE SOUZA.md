### # Registro de Desenvolvimento - 24/02/2025
- **Aluno:** Rafael Augusto Pereira de Souza  
- **Duração da sessão:** 2 horas

## Atividades Realizadas
Participação nas discussões iniciais sobre o escopo e funcionalidades do EcoFlex. Ajudou na organização das ideias para a calculadora de carbono e tela de impacto.

## Desafios Encontrados
Dificuldade em estimar os dados médios de emissão de CO₂ para diferentes meios de transporte e consumo energético.

## Soluções Implementadas
Pesquisas em fontes confiáveis para estimativas de emissão, além de sugestões de simplificação da lógica de cálculo.

## Aprendizados
Conhecimento sobre impactos ambientais por meio de dados reais e importância da clareza na definição de requisitos.

## Próximos Passos
Modelar a lógica da calculadora e contribuir com o backend futuramente.

---

#### # Registro de Desenvolvimento - 10/03/2025
- **Aluno:** Rafael Augusto Pereira de Souza  
- **Duração da sessão:** 2h30

## Atividades Realizadas
Criação da lógica de cálculo da emissão de carbono considerando transporte e energia elétrica. Esboço da estrutura em Dart para uso no Flutter.

## Desafios Encontrados
Converter dados de emissões em fórmulas aplicáveis e compreensíveis dentro do app.

## Soluções Implementadas
Utilização de um `Map<String, double>` com fatores de emissão por tipo de transporte e multiplicação por distância/consumo.

## Aprendizados
Tradução de dados do mundo real em fórmulas programáveis e práticas de desenvolvimento limpo em Flutter.

## Próximos Passos
Implementar a lógica diretamente na tela da calculadora e refinar o visual.

---

#### # Registro de Desenvolvimento - 17/03/2025
- **Aluno:** Rafael Augusto Pereira de Souza  
- **Duração da sessão:** 2 horas

## Atividades Realizadas
Implementação da `CalculatorScreen` em Flutter. Inserção de `Slider`, `Dropdown` e `TextField` com controle de estado para entrada do usuário.

## Desafios Encontrados
Manter a interação fluida entre os elementos e lidar com múltiplos tipos de dados (double/int).

## Soluções Implementadas
Uso de `setState`, validações simples, e formatação de `double` para exibir resultados com precisão.

## Aprendizados
Experiência prática em controle de estado e design de interação com o usuário no Flutter.

## Próximos Passos
Refinar os resultados e conectar a lógica da tela de impacto com os dados calculados.

---

#### # Registro de Desenvolvimento - 24/03/2025
- **Aluno:** Rafael Augusto Pereira de Souza  
- **Duração da sessão:** 1h30

## Atividades Realizadas
Ajustes finais na tela da calculadora e testes para validar o funcionamento com diferentes dados de entrada.

## Desafios Encontrados
Pequenos bugs visuais com o `Slider` e formatação do texto de resultado.

## Soluções Implementadas
Correções com `toStringAsFixed`, alinhamento e uso de `Card` com `width: double.infinity` para melhor apresentação.

## Aprendizados
Melhor entendimento sobre apresentação de dados e refinamento visual com widgets do Flutter.

## Próximos Passos
Integrar a tela de impacto com dados simulados da calculadora e estruturar parte do backend.

---

#### # Registro de Desenvolvimento - 31/03/2025
- **Aluno:** Rafael Augusto Pereira de Souza  
- **Duração da sessão:** 2 horas

## Atividades Realizadas
Implementação inicial da `ImpactScreen`, com dados simulados de árvores plantadas e CO₂ compensado. Estilização com ícones e cartões informativos.

## Desafios Encontrados
Equilibrar clareza da informação com design atraente e conciso.

## Soluções Implementadas
Utilização de `ListTile`, `Card` e ícones temáticos para tornar os dados mais compreensíveis e visualmente agradáveis.

## Aprendizados
Exploração de widgets mais sofisticados e preocupação com UX em apresentação de dados sustentáveis.

## Próximos Passos
Conectar as informações do cálculo real com a tela de impacto no futuro backend.