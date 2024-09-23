final List<Splash> listSplash = [
  Splash(
    image: "assets/splash/Frame1.png",
    title: "Easy to Search",
    description:
        "Find your favorite items in just a few seconds, with the search bar at the top of the screen.",
  ),
  Splash(
    image: "assets/splash/Frame2.png",
    title: "Easy to Access",
    description:
        "You can access the application from anywhere, anytime, and from any device.",
  ),
  Splash(
    image: "assets/splash/Frame3.png",
    title: "Easy to Manage",
    description: "Manage your items easily, with just a few clicks.",
  ),
];

class Splash {
  final String image, title, description;

  Splash({required this.image, required this.title, this.description = ""});
}
