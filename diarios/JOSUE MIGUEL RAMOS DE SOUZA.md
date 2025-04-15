# Registro de Desenvolvimento - 24/02/2025

**Aluno:** Josué Miguel Ramos de Souza  
**Duração da sessão:** 2h  

## Atividades Realizadas
- Participação na definição da arquitetura inicial do app EcoFlex.
- Contribuição no esboço das principais telas (Home, Calculadora, Perfil).
- Discussão sobre o fluxo de navegação e funcionalidades essenciais.

## Desafios Encontrados
- Alinhar as ideias do grupo para uma estrutura coesa.
- Dificuldades iniciais com a organização de rotas no Flutter.

## Soluções Implementadas
- Uso do `MaterialPageRoute` para navegação entre páginas.
- Criação de um esboço do `BottomNavigationBar` compartilhado.

## Aprendizados
- Compreensão da estrutura de navegação no Flutter.
- Melhoria na comunicação em equipe e tomada de decisões em grupo.

## Próximos Passos
- Implementar a tela de impacto do usuário.
- Pesquisar mais sobre boas práticas de navegação no Flutter.

---

# Registro de Desenvolvimento - 10/03/2025

**Aluno:** Josué Miguel Ramos de Souza  
**Duração da sessão:** 2h30min  

## Atividades Realizadas
- Desenvolvimento inicial da tela de impacto.
- Criação dos cards com estatísticas (árvores plantadas, CO₂ compensado).

## Desafios Encontrados
- Ajuste de layout responsivo e alinhamento dos elementos.
- Decisão sobre os dados a serem mostrados por padrão.

## Soluções Implementadas
- Utilização de `Card` com `ListTile` para exibir dados de forma clara.
- Uso de constantes para simular valores iniciais de impacto.

## Aprendizados
- Prática com widgets como `Card`, `ListTile` e `Column`.
- Importância da consistência visual na apresentação de dados.

## Próximos Passos
- Ligar os dados simulados a valores reais.
- Adicionar gráficos ou animações para tornar a visualização mais dinâmica.

---

# Registro de Desenvolvimento - 17/03/2025

**Aluno:** Josué Miguel Ramos de Souza  
**Duração da sessão:** 3h  

## Atividades Realizadas
- Refatoração da tela de impacto para manter design limpo.
- Implementação de padding e cores consistentes com o tema do app.
- Revisão do código de outros colegas.

## Desafios Encontrados
- Garantir que a responsividade funcionasse em diferentes resoluções.
- Pequenas divergências com o padrão de cores entre páginas.

## Soluções Implementadas
- Aplicação de `EdgeInsets.all(16)` padrão e uso de `Color(0xFFF7F7EF)` como fundo unificado.
- Uso da paleta de verde já definida no projeto.

## Aprendizados
- Organização visual e UX no Flutter.
- Refatoração e legibilidade do código.

## Próximos Passos
- Trabalhar na integração da tela de impacto com dados reais do backend futuro.

---

# Registro de Desenvolvimento - 24/03/2025

**Aluno:** Josué Miguel Ramos de Souza  
**Duração da sessão:** 2h  

## Atividades Realizadas
- Criação do botão de navegação para a calculadora de carbono a partir da home.
- Testes de usabilidade entre as telas principais.

## Desafios Encontrados
- Pequenas inconsistências na troca de tela pela `BottomNavBar`.

## Soluções Implementadas
- Correção do `currentIndex` para garantir navegação adequada.
- Simplificação dos `GestureDetector` com `Navigator.push`.

## Aprendizados
- Importância da usabilidade e navegação fluida.
- Detalhes do controle de estado com navegação estática.

## Próximos Passos
- Adicionar dados persistentes simulados.
- Trabalhar na tela de perfil e edição de usuário.

---

# Registro de Desenvolvimento - 31/03/2025

**Aluno:** Josué Miguel Ramos de Souza  
**Duração da sessão:** 3h  

## Atividades Realizadas
- Participação no desenvolvimento da tela de perfil.
- Auxílio na criação dos `ListTile` de opções: histórico, configurações e logout.
- Discussão sobre layout da futura tela de edição de usuário.

## Desafios Encontrados
- Decisão sobre onde armazenar temporariamente os dados do perfil.
- Integração da navegação da tela de perfil com as futuras funcionalidades.

## Soluções Implementadas
- Uso de variáveis simuladas para nome e email.
- Configuração da tela para receber futuras conexões com backend.

## Aprendizados
- Construção de tela de perfil funcional e esteticamente agradável.
- Preparação da interface para dados dinâmicos.

## Próximos Passos
- Desenvolver a tela de edição de perfil.
- Simular autenticação e alteração de dados pelo usuário.
