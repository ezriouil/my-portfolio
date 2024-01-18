import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class HomeController {

  // - - - - - - - - - - - - - - - - - - CREATE STATES - - - - - - - - - - - - - - - - - -  //
  final ScrollController scrollController = ScrollController();

  // - - - - - - - - - - - - - - - - - - BUTTONS - - - - - - - - - - - - - - - - - -  //
  onHireMeClick(){
    launchUrl(Uri.parse("tel://212624778355"));
  }
  onAboutClick(){
    scrollController.animateTo(scrollController.position.maxScrollExtent - 1500,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }
  onContactClick(){
    scrollController.animateTo(scrollController.position.maxScrollExtent - 200,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }
  onProjectsClick(){
    scrollController.animateTo(scrollController.position.maxScrollExtent-800,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }
  onTwitterClick(){
    onHireMeClick();
  }
  onGithubClick(){
    launchUrl(Uri.parse("https://github.com/ezriouil"));
  }
  onLinkedinClick(){
    launchUrl(Uri.parse("https://www.linkedin.com/in/mohamed-ezriouil/"));
  }
  onInstagramClick(){
    launchUrl(Uri.parse("https://www.instagram.com/med_ezriouil/"));
  }
  onWhatsappClick(){
    launchUrl(Uri.parse("https://wa.me/624778355?text=Hi Mohamed ..."));
  }
  onSubmitClick(){
    onHireMeClick();
  }

  // - - - - - - - - - - - - - - - - - - PROJECTS - - - - - - - - - - - - - - - - - -  //
  List<Project> projects = [
    Project(image: "assets/images/projects/ecommerce_app.png", title: "Vyras App", description: "Ecommerce Application For Shopping Clothes Online.", link: "https://github.com/ezriouil/Template"),
    Project(image: "assets/images/projects/delivery_food.png", title: "Panda Food", description: "Food Application For Order All Food Types Online", link: "https://github.com/ezriouil/Delivery"),
    Project(image: "assets/images/projects/movies.png", title: "Tv Maze", description: "Movies / series Application to know information like characters, trailer, etc", link: "https://github.com/ezriouil/Tv-maze"),
    Project(image: "assets/images/projects/fitness.png", title: "Hk Club", description: "Fitness Application Automatically Manage Customer Payment.", link: "https://github.com/ezriouil/Fitness"),
    Project(image: "assets/images/projects/free_to_play.png", title: "Free To Play", description: "Games Application to know information With Link Download It, etc", link: "https://github.com/ezriouil/Free-To-Play"),
    Project(image: "assets/images/projects/management.png", title: "Management", description: "Management Application For Manage Stocks Like The dates of each payment, the number of products sold.", link: "https://github.com/ezriouil/Managment-App"),
    Project(image: "assets/images/projects/games.png", title: "Ezil Games", description: "Games Application For Playing Video Games", link: "https://github.com/ezriouil/Ezil-Games"),
    Project(image: "assets/images/projects/tv_app.png", title: "Ezil Tv", description: "TV Application For Watching Channel TV", link: "https://github.com/ezriouil/Ezil-Tv"),
    Project(image: "assets/images/projects/agency.jpg", title: "Ezil Agency", description: "Agency Web Site For Sold Services", link: "https://github.com/ezriouil/ezil_agency"),
    Project(image: "assets/images/projects/books.jpg", title: "Books Hub", description: "Web Site Display Books", link: "https://github.com/ezriouil/Books-Library"),
    Project(image: "assets/images/projects/portfolio.jpg", title: "Dev Portfolio", description: "Web Site Display Skills", link: "https://github.com/ezriouil/Portfolio"),
    Project(image: "assets/images/projects/login.png", title: "SignUp / Login Pages", description: "Web Site For Sign Up And Login", link: "https://github.com/ezriouil/Authentication"),
  ];
}

class Project{
  final String image, title, description, link;
  Project({required this.image, required this.title, required this.description, required this.link});
}