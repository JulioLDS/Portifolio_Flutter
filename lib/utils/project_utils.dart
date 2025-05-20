class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

// ###############
// HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/1.png',
    title: 'Primeiro Portifólio',
    subtitle:
        'Meu primeiro Portifólio autoral com tópicos como: uma pouco sobre mim, projetos, trajetória e uma área para entrar em contato com gmail que funciona.',
    webLink: 'https://juliolds.github.io/Portifolio/',
  ),
  ProjectUtils(
    image: 'assets/projects/02.png',
    title: 'Calculadora JavaScript',
    subtitle:
        'Projeto de Calculadora utilizando JavaScript a fim de treinar funções e estilizações.',
    webLink: 'https://juliolds.github.io/Calculadora-JS/',
  ),
  ProjectUtils(
    image: 'assets/projects/03.png',
    title: 'Login e Cadastro',
    subtitle:
        'Págida apenas demonstrativa de Login e Cadastro de usuários com design intuitivo. Construida para a prática da linguagem de programação javaScript.',
    webLink: 'https://juliolds.github.io/Login-e-Cadastro/login.html',
  ),
  ProjectUtils(
    image: 'assets/projects/04.png',
    title: 'Lista de Tarefas',
    subtitle:
        'Lista de tarefas com html, css e javascript com design baseado no personagem Perry Ornitorrinco do desenho Phineas e Ferb.',
    webLink: 'https://juliolds.github.io/Lista-de-Tarefas/ToDoList.html',
  ),
  ProjectUtils(
    image: 'assets/projects/05.png',
    title: 'Jogo da Velha',
    subtitle:
        'Jogo da Velha com javaScrip, html e css que roda em uma página web, construída com oobjetivo de estudar alguns fundamentos e tags em JavaScript.',
    webLink: 'https://juliolds.github.io/Jogo-da-Velha/JogoDaVelha.html',
  ),
];

// ###############
// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/w01.png',
    title: 'Página Cafeteria',
    subtitle:
        'LandPage apenas demomstrativa sobre uma cafeteria, com design intuitivo e opção de Endereço com JavaScript',
    webLink: 'https://juliolds.github.io/P-gina-Cafeteria/',
  ),
];
