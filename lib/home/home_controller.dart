import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

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

  // - - - - - - - - - - - - - - - - - - BUTTONS - - - - - - - - - - - - - - - - - -  //
  onHireMeClick(){}
  onHomeClick(){}
  onAboutClick(){}
  onProjectsClick(){}
  onTwitterClick(){}
  onGithubClick(){}
  onLinkedinClick(){}
  onInstagramClick(){}
  onWhatsappClick(){
    launchUrl(Uri.parse("tel://212624778355"));
  }
  onSubmitClick(){}

  // - - - - - - - - - - - - - - - - - - PROJECTS - - - - - - - - - - - - - - - - - -  //
  List<Project> projects = [
    Project(image: "assets/images/projects/ecommerce_app.png", title: "Vyras App", description: "Ecommerce Application For Shopping Clothes Online.", link: ""),
    Project(image: "assets/images/projects/delivery_food.png", title: "Panda Food", description: "Food Application For Order All Food Types Online", link: ""),
    Project(image: "assets/images/projects/movies.png", title: "Tv Maze", description: "Movies / series Application to know information like characters, trailer, etc", link: ""),
    Project(image: "assets/images/projects/sport.png", title: "Hk Club", description: "Fitness Application Automatically Manage Customer Payment.", link: ""),
    Project(image: "assets/images/projects/free_to_play.png", title: "Free To Play", description: "Games Application to know information With Link Download It, etc", link: ""),
    Project(image: "assets/images/projects/management.png", title: "Management", description: "Management Application For Manage Stocks Like The dates of each payment, the number of products sold.", link: ""),
    Project(image: "assets/images/projects/games.png", title: "Ezil Games", description: "Games Application For Playing Video Games", link: ""),
    Project(image: "assets/images/projects/agency.jpg", title: "Ezil Agency", description: "Agency Web Site For Sold Services", link: ""),
    Project(image: "assets/images/projects/books.jpg", title: "Books Hub", description: "Web Site Display Books", link: ""),
    Project(image: "assets/images/projects/portfolio.jpg", title: "Dev Portfolio", description: "Web Site Display Skills", link: ""),
    Project(image: "assets/images/projects/login.png", title: "SignUp / Login Pages", description: "Web Site For Sign Up And Login", link: ""),
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