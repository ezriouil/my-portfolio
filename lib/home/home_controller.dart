import 'package:get/get.dart';

class HomeController extends GetxController {

  // - - - - - - - - - - - - - - - - - - CREATE STATES - - - - - - - - - - - - - - - - - -  //

  // - - - - - - - - - - - - - - - - - - INIT STATES - - - - - - - - - - - - - - - - - -  //
  @override
  void onInit() {
    super.onInit();
    init();
  }

  // - - - - - - - - - - - - - - - - - - INIT - - - - - - - - - - - - - - - - - -  //
  init() async {}

  // - - - - - - - - - - - - - - - - - - PROJECTS - - - - - - - - - - - - - - - - - -  //
  List<Project> projects = [
    Project(image: "assets/images/projects/ecommerce_app.png", title: "Verus App", description: "Ecommerce App For Shopping Online", link: ""),
    Project(image: "assets/images/projects/delivery_food.png", title: "Panda Food", description: "Food App For Order Foods Online", link: ""),
    Project(image: "assets/images/projects/movies.png", title: "Panda Food", description: "Food App For Order Foods Online", link: ""),
    Project(image: "assets/images/projects/sport.png", title: "Panda Food", description: "Food App For Order Foods Online", link: ""),
    Project(image: "assets/images/projects/management.png", title: "Panda Food", description: "Food App For Order Foods Online", link: ""),
    Project(image: "assets/images/projects/games.png", title: "Panda Food", description: "Food App For Order Foods Online", link: ""),
    Project(image: "assets/images/projects/agency.jpg", title: "Panda Food", description: "Food App For Order Foods Online", link: ""),
    Project(image: "assets/images/projects/books.jpg", title: "Panda Food", description: "Food App For Order Foods Online", link: ""),
    Project(image: "assets/images/projects/portfolio.jpg", title: "Panda Food", description: "Food App For Order Foods Online", link: ""),
    Project(image: "assets/images/projects/login.png", title: "Panda Food", description: "Food App For Order Foods Online", link: ""),
  ];

  // - - - - - - - - - - - - - - - - - - DISPOSE STATES - - - - - - - - - - - - - - - - - -  //
  @override
  void dispose() {
    super.dispose();

  }
}

class Project{
  final String image, title, description, link;
  Project({required this.image, required this.title, required this.description, required this.link});
}